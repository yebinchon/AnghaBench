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
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {scalar_t__ auth_mode; int /*<<< orphan*/  drvdata; int /*<<< orphan*/  authsize; } ;
struct aead_request {int dummy; } ;
struct TYPE_2__ {int op_type; } ;
struct aead_req_ctx {int /*<<< orphan*/  mac_buf_dma_addr; int /*<<< orphan*/  icv_dma_addr; TYPE_1__ gen_ctx; } ;

/* Variables and functions */
 unsigned int DRV_CIPHER_XCBC_MAC ; 
 int DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 unsigned int DRV_HASH_HW_SHA1 ; 
 unsigned int DRV_HASH_HW_SHA256 ; 
 scalar_t__ DRV_HASH_SHA1 ; 
 scalar_t__ DRV_HASH_XCBC_MAC ; 
 int /*<<< orphan*/  HASH_DIGEST_RESULT_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  HASH_PADDING_DISABLED ; 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  S_HASH_to_DOUT ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct aead_request *req,
				struct cc_hw_desc desc[],
				unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct aead_req_ctx *req_ctx = FUNC0(req);
	unsigned int idx = *seq_size;
	unsigned int hash_mode = (ctx->auth_mode == DRV_HASH_SHA1) ?
				DRV_HASH_HW_SHA1 : DRV_HASH_HW_SHA256;
	int direct = req_ctx->gen_ctx.op_type;

	/* Get final ICV result */
	if (direct == DRV_CRYPTO_DIRECTION_ENCRYPT) {
		FUNC3(&desc[idx]);
		FUNC9(&desc[idx], S_HASH_to_DOUT);
		FUNC11(&desc[idx], SETUP_WRITE_STATE0);
		FUNC8(&desc[idx], req_ctx->icv_dma_addr, ctx->authsize,
			      NS_BIT, 1);
		FUNC10(ctx->drvdata, &desc[idx]);
		if (ctx->auth_mode == DRV_HASH_XCBC_MAC) {
			FUNC4(&desc[idx]);
			FUNC7(&desc[idx], DRV_CIPHER_XCBC_MAC);
		} else {
			FUNC5(&desc[idx],
					   HASH_DIGEST_RESULT_LITTLE_ENDIAN);
			FUNC7(&desc[idx], hash_mode);
		}
	} else { /*Decrypt*/
		/* Get ICV out from hardware */
		FUNC3(&desc[idx]);
		FUNC11(&desc[idx], SETUP_WRITE_STATE0);
		FUNC9(&desc[idx], S_HASH_to_DOUT);
		FUNC8(&desc[idx], req_ctx->mac_buf_dma_addr,
			      ctx->authsize, NS_BIT, 1);
		FUNC10(ctx->drvdata, &desc[idx]);
		FUNC5(&desc[idx],
				   HASH_DIGEST_RESULT_LITTLE_ENDIAN);
		FUNC6(&desc[idx], HASH_PADDING_DISABLED);
		if (ctx->auth_mode == DRV_HASH_XCBC_MAC) {
			FUNC7(&desc[idx], DRV_CIPHER_XCBC_MAC);
			FUNC4(&desc[idx]);
		} else {
			FUNC7(&desc[idx], hash_mode);
		}
	}

	*seq_size = (++idx);
}