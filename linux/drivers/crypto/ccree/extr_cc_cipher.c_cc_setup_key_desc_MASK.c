#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_5__ {int op_type; } ;
struct cipher_req_ctx {TYPE_1__ gen_ctx; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  key1_slot; } ;
struct TYPE_7__ {int /*<<< orphan*/  slot; } ;
struct TYPE_6__ {int /*<<< orphan*/  key_dma_addr; } ;
struct cc_cipher_ctx {int cipher_mode; int flow_mode; unsigned int keylen; TYPE_4__ hw; TYPE_3__ cpp; TYPE_2__ user; int /*<<< orphan*/  drvdata; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int AES_MAX_KEY_SIZE ; 
 int /*<<< orphan*/  CC_HW_PROTECTED_KEY ; 
 int /*<<< orphan*/  CC_POLICY_PROTECTED_KEY ; 
 int /*<<< orphan*/  DMA_DLLI ; 
#define  DRV_CIPHER_BITLOCKER 135 
#define  DRV_CIPHER_CBC 134 
#define  DRV_CIPHER_CBC_CTS 133 
#define  DRV_CIPHER_CTR 132 
#define  DRV_CIPHER_ECB 131 
#define  DRV_CIPHER_ESSIV 130 
#define  DRV_CIPHER_OFB 129 
#define  DRV_CIPHER_XTS 128 
 int /*<<< orphan*/  NS_BIT ; 
 int /*<<< orphan*/  SETUP_LOAD_KEY0 ; 
 int S_DIN_to_AES ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int FUNC1 (struct cc_cipher_ctx*) ; 
 struct cc_cipher_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct crypto_tfm *tfm,
			      struct cipher_req_ctx *req_ctx,
			      unsigned int nbytes, struct cc_hw_desc desc[],
			      unsigned int *seq_size)
{
	struct cc_cipher_ctx *ctx_p = FUNC2(tfm);
	struct device *dev = FUNC4(ctx_p->drvdata);
	int cipher_mode = ctx_p->cipher_mode;
	int flow_mode = ctx_p->flow_mode;
	int direction = req_ctx->gen_ctx.op_type;
	dma_addr_t key_dma_addr = ctx_p->user.key_dma_addr;
	unsigned int key_len = ctx_p->keylen;
	unsigned int din_size;

	switch (cipher_mode) {
	case DRV_CIPHER_CBC:
	case DRV_CIPHER_CBC_CTS:
	case DRV_CIPHER_CTR:
	case DRV_CIPHER_OFB:
	case DRV_CIPHER_ECB:
		/* Load key */
		FUNC5(&desc[*seq_size]);
		FUNC7(&desc[*seq_size], cipher_mode);
		FUNC6(&desc[*seq_size], direction);

		if (FUNC0(tfm) == CC_POLICY_PROTECTED_KEY) {
			/* We use the AES key size coding for all CPP algs */
			FUNC12(&desc[*seq_size], key_len);
			FUNC8(&desc[*seq_size], ctx_p->cpp.slot);
			flow_mode = FUNC1(ctx_p);
		} else {
			if (flow_mode == S_DIN_to_AES) {
				if (FUNC0(tfm) == CC_HW_PROTECTED_KEY) {
					FUNC11(&desc[*seq_size],
							  ctx_p->hw.key1_slot);
				} else {
					/* CC_POLICY_UNPROTECTED_KEY
					 * Invalid keys are filtered out in
					 * sethkey()
					 */
					din_size = (key_len == 24) ?
						AES_MAX_KEY_SIZE : key_len;

					FUNC9(&desc[*seq_size], DMA_DLLI,
						     key_dma_addr, din_size,
						     NS_BIT);
				}
				FUNC12(&desc[*seq_size], key_len);
			} else {
				/*des*/
				FUNC9(&desc[*seq_size], DMA_DLLI,
					     key_dma_addr, key_len, NS_BIT);
				FUNC13(&desc[*seq_size], key_len);
			}
			FUNC14(&desc[*seq_size], SETUP_LOAD_KEY0);
		}
		FUNC10(&desc[*seq_size], flow_mode);
		(*seq_size)++;
		break;
	case DRV_CIPHER_XTS:
	case DRV_CIPHER_ESSIV:
	case DRV_CIPHER_BITLOCKER:
		/* Load AES key */
		FUNC5(&desc[*seq_size]);
		FUNC7(&desc[*seq_size], cipher_mode);
		FUNC6(&desc[*seq_size], direction);
		if (FUNC0(tfm) == CC_HW_PROTECTED_KEY) {
			FUNC11(&desc[*seq_size],
					  ctx_p->hw.key1_slot);
		} else {
			FUNC9(&desc[*seq_size], DMA_DLLI, key_dma_addr,
				     (key_len / 2), NS_BIT);
		}
		FUNC12(&desc[*seq_size], (key_len / 2));
		FUNC10(&desc[*seq_size], flow_mode);
		FUNC14(&desc[*seq_size], SETUP_LOAD_KEY0);
		(*seq_size)++;
		break;
	default:
		FUNC3(dev, "Unsupported cipher mode (%d)\n", cipher_mode);
	}
}