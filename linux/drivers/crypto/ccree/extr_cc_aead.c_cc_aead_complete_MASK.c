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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {scalar_t__ authsize; int /*<<< orphan*/  cipher_mode; } ;
struct aead_request {scalar_t__ cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  iv; } ;
struct TYPE_2__ {scalar_t__ op_type; } ;
struct aead_req_ctx {int /*<<< orphan*/  dst_sgl; int /*<<< orphan*/  mac_buf; scalar_t__ dst_offset; scalar_t__ is_icv_fragmented; int /*<<< orphan*/  icv_virt_addr; TYPE_1__ gen_ctx; int /*<<< orphan*/  backup_iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_SG_FROM_BUF ; 
 scalar_t__ DRV_CRYPTO_DIRECTION_DECRYPT ; 
 int EBADMSG ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 struct aead_req_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct aead_request*) ; 
 struct cc_aead_ctx* FUNC4 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct device *dev, void *cc_req, int err)
{
	struct aead_request *areq = (struct aead_request *)cc_req;
	struct aead_req_ctx *areq_ctx = FUNC1(areq);
	struct crypto_aead *tfm = FUNC5(cc_req);
	struct cc_aead_ctx *ctx = FUNC4(tfm);

	/* BACKLOG notification */
	if (err == -EINPROGRESS)
		goto done;

	FUNC3(dev, areq);

	/* Restore ordinary iv pointer */
	areq->iv = areq_ctx->backup_iv;

	if (err)
		goto done;

	if (areq_ctx->gen_ctx.op_type == DRV_CRYPTO_DIRECTION_DECRYPT) {
		if (FUNC7(areq_ctx->mac_buf, areq_ctx->icv_virt_addr,
			   ctx->authsize) != 0) {
			FUNC6(dev, "Payload authentication failure, (auth-size=%d, cipher=%d)\n",
				ctx->authsize, ctx->cipher_mode);
			/* In case of payload authentication failure, MUST NOT
			 * revealed the decrypted message --> zero its memory.
			 */
			FUNC9(areq->dst, FUNC8(areq->dst),
				       areq->cryptlen, 0);
			err = -EBADMSG;
		}
	/*ENCRYPT*/
	} else if (areq_ctx->is_icv_fragmented) {
		u32 skip = areq->cryptlen + areq_ctx->dst_offset;

		FUNC2(dev, areq_ctx->mac_buf, areq_ctx->dst_sgl,
				   skip, (skip + ctx->authsize),
				   CC_SG_FROM_BUF);
	}
done:
	FUNC0(areq, err);
}