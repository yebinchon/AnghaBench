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
typedef  int u8 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {unsigned int authsize; int /*<<< orphan*/  drvdata; } ;
struct aead_request {unsigned int* iv; unsigned int cryptlen; } ;
struct TYPE_2__ {scalar_t__ op_type; } ;
struct aead_req_ctx {int* ccm_config; int* mac_buf; scalar_t__ assoclen; int /*<<< orphan*/  ccm_hdr_size; TYPE_1__ gen_ctx; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int CCM_A0_OFFSET ; 
 int CCM_B0_OFFSET ; 
 int CCM_CTR_COUNT_0_OFFSET ; 
 scalar_t__ DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 int EINVAL ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct aead_request *req)
{
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct device *dev = FUNC4(ctx->drvdata);
	struct aead_req_ctx *req_ctx = FUNC0(req);
	//unsigned int size_of_a = 0, rem_a_size = 0;
	unsigned int lp = req->iv[0];
	/* Note: The code assume that req->iv[0] already contains the value
	 * of L' of RFC3610
	 */
	unsigned int l = lp + 1;  /* This is L' of RFC 3610. */
	unsigned int m = ctx->authsize;  /* This is M' of RFC 3610. */
	u8 *b0 = req_ctx->ccm_config + CCM_B0_OFFSET;
	u8 *a0 = req_ctx->ccm_config + CCM_A0_OFFSET;
	u8 *ctr_count_0 = req_ctx->ccm_config + CCM_CTR_COUNT_0_OFFSET;
	unsigned int cryptlen = (req_ctx->gen_ctx.op_type ==
				 DRV_CRYPTO_DIRECTION_ENCRYPT) ?
				req->cryptlen :
				(req->cryptlen - ctx->authsize);
	int rc;

	FUNC7(req_ctx->mac_buf, 0, AES_BLOCK_SIZE);
	FUNC7(req_ctx->ccm_config, 0, AES_BLOCK_SIZE * 3);

	/* taken from crypto/ccm.c */
	/* 2 <= L <= 8, so 1 <= L' <= 7. */
	if (l < 2 || l > 8) {
		FUNC3(dev, "illegal iv value %X\n", req->iv[0]);
		return -EINVAL;
	}
	FUNC6(b0, req->iv, AES_BLOCK_SIZE);

	/* format control info per RFC 3610 and
	 * NIST Special Publication 800-38C
	 */
	*b0 |= (8 * ((m - 2) / 2));
	if (req_ctx->assoclen > 0)
		*b0 |= 64;  /* Enable bit 6 if Adata exists. */

	rc = FUNC8(b0 + 16 - l, cryptlen, l);  /* Write L'. */
	if (rc) {
		FUNC3(dev, "message len overflow detected");
		return rc;
	}
	 /* END of "taken from crypto/ccm.c" */

	/* l(a) - size of associated data. */
	req_ctx->ccm_hdr_size = FUNC5(a0, req_ctx->assoclen);

	FUNC7(req->iv + 15 - req->iv[0], 0, req->iv[0] + 1);
	req->iv[15] = 1;

	FUNC6(ctr_count_0, req->iv, AES_BLOCK_SIZE);
	ctr_count_0[15] = 0;

	return 0;
}