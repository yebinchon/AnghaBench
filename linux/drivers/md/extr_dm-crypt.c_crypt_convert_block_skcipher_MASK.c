#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct dm_crypt_request {int iv_sector; struct scatterlist* sg_out; struct scatterlist* sg_in; struct convert_context* ctx; } ;
struct crypt_config {int sector_size; int sector_shift; int iv_offset; TYPE_1__* iv_gen_ops; int /*<<< orphan*/  iv_size; int /*<<< orphan*/  integrity_iv_size; int /*<<< orphan*/  cipher_flags; } ;
struct convert_context {int cc_sector; int /*<<< orphan*/  iter_out; int /*<<< orphan*/  bio_out; int /*<<< orphan*/  iter_in; int /*<<< orphan*/  bio_in; } ;
struct bio_vec {int bv_len; int /*<<< orphan*/  bv_offset; int /*<<< orphan*/  bv_page; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int (* generator ) (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ;int (* post ) (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_IV_LARGE_SECTORS ; 
 int EIO ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct bio_vec FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct skcipher_request*) ; 
 int FUNC5 (struct skcipher_request*) ; 
 struct dm_crypt_request* FUNC6 (struct crypt_config*,struct skcipher_request*) ; 
 int /*<<< orphan*/ * FUNC7 (struct crypt_config*,struct dm_crypt_request*) ; 
 int /*<<< orphan*/ * FUNC8 (struct crypt_config*,struct dm_crypt_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct crypt_config*,struct dm_crypt_request*) ; 
 int /*<<< orphan*/ * FUNC11 (struct crypt_config*,struct dm_crypt_request*) ; 
 unsigned int* FUNC12 (struct crypt_config*,struct dm_crypt_request*) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ; 
 int FUNC17 (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct crypt_config *cc,
					struct convert_context *ctx,
					struct skcipher_request *req,
					unsigned int tag_offset)
{
	struct bio_vec bv_in = FUNC2(ctx->bio_in, ctx->iter_in);
	struct bio_vec bv_out = FUNC2(ctx->bio_out, ctx->iter_out);
	struct scatterlist *sg_in, *sg_out;
	struct dm_crypt_request *dmreq;
	u8 *iv, *org_iv, *tag_iv;
	__le64 *sector;
	int r = 0;

	/* Reject unexpected unaligned bio. */
	if (FUNC19(bv_in.bv_len & (cc->sector_size - 1)))
		return -EIO;

	dmreq = FUNC6(cc, req);
	dmreq->iv_sector = ctx->cc_sector;
	if (FUNC18(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags))
		dmreq->iv_sector >>= cc->sector_shift;
	dmreq->ctx = ctx;

	*FUNC12(cc, dmreq) = tag_offset;

	iv = FUNC7(cc, dmreq);
	org_iv = FUNC10(cc, dmreq);
	tag_iv = FUNC8(cc, dmreq);

	sector = FUNC11(cc, dmreq);
	*sector = FUNC3(ctx->cc_sector - cc->iv_offset);

	/* For skcipher we use only the first sg item */
	sg_in  = &dmreq->sg_in[0];
	sg_out = &dmreq->sg_out[0];

	FUNC13(sg_in, 1);
	FUNC14(sg_in, bv_in.bv_page, cc->sector_size, bv_in.bv_offset);

	FUNC13(sg_out, 1);
	FUNC14(sg_out, bv_out.bv_page, cc->sector_size, bv_out.bv_offset);

	if (cc->iv_gen_ops) {
		/* For READs use IV stored in integrity metadata */
		if (cc->integrity_iv_size && FUNC1(ctx->bio_in) != WRITE) {
			FUNC9(org_iv, tag_iv, cc->integrity_iv_size);
		} else {
			r = cc->iv_gen_ops->generator(cc, org_iv, dmreq);
			if (r < 0)
				return r;
			/* Store generated IV in integrity metadata */
			if (cc->integrity_iv_size)
				FUNC9(tag_iv, org_iv, cc->integrity_iv_size);
		}
		/* Working copy of IV, to be modified in crypto API */
		FUNC9(iv, org_iv, cc->iv_size);
	}

	FUNC15(req, sg_in, sg_out, cc->sector_size, iv);

	if (FUNC1(ctx->bio_in) == WRITE)
		r = FUNC5(req);
	else
		r = FUNC4(req);

	if (!r && cc->iv_gen_ops && cc->iv_gen_ops->post)
		r = cc->iv_gen_ops->post(cc, org_iv, dmreq);

	FUNC0(ctx->bio_in, &ctx->iter_in, cc->sector_size);
	FUNC0(ctx->bio_out, &ctx->iter_out, cc->sector_size);

	return r;
}