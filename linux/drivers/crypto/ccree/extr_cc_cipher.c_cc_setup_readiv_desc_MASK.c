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
struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int op_type; int /*<<< orphan*/  iv_dma_addr; } ;
struct cipher_req_ctx {TYPE_1__ gen_ctx; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_cipher_ctx {int cipher_mode; scalar_t__ key_type; int /*<<< orphan*/  drvdata; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int CC_AES_BLOCK_SIZE ; 
 scalar_t__ CC_POLICY_PROTECTED_KEY ; 
#define  DRV_CIPHER_BITLOCKER 135 
#define  DRV_CIPHER_CBC 134 
#define  DRV_CIPHER_CBC_CTS 133 
#define  DRV_CIPHER_CTR 132 
#define  DRV_CIPHER_ECB 131 
#define  DRV_CIPHER_ESSIV 130 
#define  DRV_CIPHER_OFB 129 
#define  DRV_CIPHER_XTS 128 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE0 ; 
 int /*<<< orphan*/  SETUP_WRITE_STATE1 ; 
 int FUNC0 (struct cc_cipher_ctx*) ; 
 struct cc_cipher_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct crypto_tfm *tfm,
				 struct cipher_req_ctx *req_ctx,
				 unsigned int ivsize, struct cc_hw_desc desc[],
				 unsigned int *seq_size)
{
	struct cc_cipher_ctx *ctx_p = FUNC1(tfm);
	struct device *dev = FUNC3(ctx_p->drvdata);
	int cipher_mode = ctx_p->cipher_mode;
	int flow_mode = FUNC0(ctx_p);
	int direction = req_ctx->gen_ctx.op_type;
	dma_addr_t iv_dma_addr = req_ctx->gen_ctx.iv_dma_addr;

	if (ctx_p->key_type == CC_POLICY_PROTECTED_KEY)
		return;

	switch (cipher_mode) {
	case DRV_CIPHER_ECB:
		break;
	case DRV_CIPHER_CBC:
	case DRV_CIPHER_CBC_CTS:
	case DRV_CIPHER_CTR:
	case DRV_CIPHER_OFB:
		/* Read next IV */
		FUNC4(&desc[*seq_size]);
		FUNC7(&desc[*seq_size], iv_dma_addr, ivsize, NS_BIT, 1);
		FUNC5(&desc[*seq_size], direction);
		FUNC8(&desc[*seq_size], flow_mode);
		FUNC6(&desc[*seq_size], cipher_mode);
		if (cipher_mode == DRV_CIPHER_CTR ||
		    cipher_mode == DRV_CIPHER_OFB) {
			FUNC10(&desc[*seq_size], SETUP_WRITE_STATE1);
		} else {
			FUNC10(&desc[*seq_size], SETUP_WRITE_STATE0);
		}
		FUNC9(ctx_p->drvdata, &desc[*seq_size]);
		(*seq_size)++;
		break;
	case DRV_CIPHER_XTS:
	case DRV_CIPHER_ESSIV:
	case DRV_CIPHER_BITLOCKER:
		/*  IV */
		FUNC4(&desc[*seq_size]);
		FUNC10(&desc[*seq_size], SETUP_WRITE_STATE1);
		FUNC6(&desc[*seq_size], cipher_mode);
		FUNC5(&desc[*seq_size], direction);
		FUNC8(&desc[*seq_size], flow_mode);
		FUNC7(&desc[*seq_size], iv_dma_addr, CC_AES_BLOCK_SIZE,
			     NS_BIT, 1);
		FUNC9(ctx_p->drvdata, &desc[*seq_size]);
		(*seq_size)++;
		break;
	default:
		FUNC2(dev, "Unsupported cipher mode (%d)\n", cipher_mode);
	}
}