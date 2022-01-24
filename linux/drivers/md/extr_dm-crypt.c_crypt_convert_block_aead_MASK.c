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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u8 ;
struct dm_crypt_request {int iv_sector; int /*<<< orphan*/ * sg_out; int /*<<< orphan*/ * sg_in; struct convert_context* ctx; } ;
struct crypt_config {scalar_t__ integrity_iv_size; scalar_t__ iv_size; int sector_size; int sector_shift; int iv_offset; int integrity_tag_size; scalar_t__ on_disk_tag_size; TYPE_1__* iv_gen_ops; int /*<<< orphan*/  cipher_flags; } ;
struct convert_context {int cc_sector; int /*<<< orphan*/  iter_out; int /*<<< orphan*/  bio_out; int /*<<< orphan*/  iter_in; int /*<<< orphan*/  bio_in; } ;
struct bio_vec {int bv_len; int /*<<< orphan*/  bv_offset; int /*<<< orphan*/  bv_page; } ;
struct aead_request {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int (* generator ) (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ;int (* post ) (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ;} ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRYPT_IV_LARGE_SECTORS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int EBADMSG ; 
 int EIO ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct bio_vec FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct aead_request*) ; 
 int FUNC10 (struct aead_request*) ; 
 struct dm_crypt_request* FUNC11 (struct crypt_config*,struct aead_request*) ; 
 int /*<<< orphan*/ * FUNC12 (struct crypt_config*,struct dm_crypt_request*) ; 
 int /*<<< orphan*/ * FUNC13 (struct crypt_config*,struct dm_crypt_request*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC17 (struct crypt_config*,struct dm_crypt_request*) ; 
 int /*<<< orphan*/ * FUNC18 (struct crypt_config*,struct dm_crypt_request*) ; 
 unsigned int* FUNC19 (struct crypt_config*,struct dm_crypt_request*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ; 
 int FUNC24 (struct crypt_config*,int /*<<< orphan*/ *,struct dm_crypt_request*) ; 
 int /*<<< orphan*/ * FUNC25 (struct crypt_config*,struct dm_crypt_request*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static int FUNC28(struct crypt_config *cc,
				     struct convert_context *ctx,
				     struct aead_request *req,
				     unsigned int tag_offset)
{
	struct bio_vec bv_in = FUNC7(ctx->bio_in, ctx->iter_in);
	struct bio_vec bv_out = FUNC7(ctx->bio_out, ctx->iter_out);
	struct dm_crypt_request *dmreq;
	u8 *iv, *org_iv, *tag_iv, *tag;
	__le64 *sector;
	int r = 0;

	FUNC0(cc->integrity_iv_size && cc->integrity_iv_size != cc->iv_size);

	/* Reject unexpected unaligned bio. */
	if (FUNC27(bv_in.bv_len & (cc->sector_size - 1)))
		return -EIO;

	dmreq = FUNC11(cc, req);
	dmreq->iv_sector = ctx->cc_sector;
	if (FUNC26(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags))
		dmreq->iv_sector >>= cc->sector_shift;
	dmreq->ctx = ctx;

	*FUNC19(cc, dmreq) = tag_offset;

	sector = FUNC18(cc, dmreq);
	*sector = FUNC8(ctx->cc_sector - cc->iv_offset);

	iv = FUNC12(cc, dmreq);
	org_iv = FUNC17(cc, dmreq);
	tag = FUNC25(cc, dmreq);
	tag_iv = FUNC13(cc, dmreq);

	/* AEAD request:
	 *  |----- AAD -------|------ DATA -------|-- AUTH TAG --|
	 *  | (authenticated) | (auth+encryption) |              |
	 *  | sector_LE |  IV |  sector in/out    |  tag in/out  |
	 */
	FUNC20(dmreq->sg_in, 4);
	FUNC21(&dmreq->sg_in[0], sector, sizeof(uint64_t));
	FUNC21(&dmreq->sg_in[1], org_iv, cc->iv_size);
	FUNC22(&dmreq->sg_in[2], bv_in.bv_page, cc->sector_size, bv_in.bv_offset);
	FUNC21(&dmreq->sg_in[3], tag, cc->integrity_tag_size);

	FUNC20(dmreq->sg_out, 4);
	FUNC21(&dmreq->sg_out[0], sector, sizeof(uint64_t));
	FUNC21(&dmreq->sg_out[1], org_iv, cc->iv_size);
	FUNC22(&dmreq->sg_out[2], bv_out.bv_page, cc->sector_size, bv_out.bv_offset);
	FUNC21(&dmreq->sg_out[3], tag, cc->integrity_tag_size);

	if (cc->iv_gen_ops) {
		/* For READs use IV stored in integrity metadata */
		if (cc->integrity_iv_size && FUNC5(ctx->bio_in) != WRITE) {
			FUNC15(org_iv, tag_iv, cc->iv_size);
		} else {
			r = cc->iv_gen_ops->generator(cc, org_iv, dmreq);
			if (r < 0)
				return r;
			/* Store generated IV in integrity metadata */
			if (cc->integrity_iv_size)
				FUNC15(tag_iv, org_iv, cc->iv_size);
		}
		/* Working copy of IV, to be modified in crypto API */
		FUNC15(iv, org_iv, cc->iv_size);
	}

	FUNC2(req, sizeof(uint64_t) + cc->iv_size);
	if (FUNC5(ctx->bio_in) == WRITE) {
		FUNC3(req, dmreq->sg_in, dmreq->sg_out,
				       cc->sector_size, iv);
		r = FUNC10(req);
		if (cc->integrity_tag_size + cc->integrity_iv_size != cc->on_disk_tag_size)
			FUNC16(tag + cc->integrity_tag_size + cc->integrity_iv_size, 0,
			       cc->on_disk_tag_size - (cc->integrity_tag_size + cc->integrity_iv_size));
	} else {
		FUNC3(req, dmreq->sg_in, dmreq->sg_out,
				       cc->sector_size + cc->integrity_tag_size, iv);
		r = FUNC9(req);
	}

	if (r == -EBADMSG) {
		char b[BDEVNAME_SIZE];
		FUNC1("%s: INTEGRITY AEAD ERROR, sector %llu", FUNC6(ctx->bio_in, b),
			    (unsigned long long)FUNC14(*sector));
	}

	if (!r && cc->iv_gen_ops && cc->iv_gen_ops->post)
		r = cc->iv_gen_ops->post(cc, org_iv, dmreq);

	FUNC4(ctx->bio_in, &ctx->iter_in, cc->sector_size);
	FUNC4(ctx->bio_out, &ctx->iter_out, cc->sector_size);

	return r;
}