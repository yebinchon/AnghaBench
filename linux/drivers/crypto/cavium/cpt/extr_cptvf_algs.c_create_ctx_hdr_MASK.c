#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  size_t u32 ;
struct TYPE_14__ {scalar_t__ enc_cipher; int /*<<< orphan*/  iv_source; int /*<<< orphan*/  aes_key; } ;
struct TYPE_15__ {int /*<<< orphan*/  flags; TYPE_5__ e; } ;
struct TYPE_16__ {TYPE_6__ enc_ctrl; int /*<<< orphan*/  encr_key; } ;
struct fc_context {TYPE_7__ enc; } ;
struct TYPE_12__ {int major; int minor; } ;
struct TYPE_13__ {TYPE_3__ s; } ;
struct TYPE_18__ {int dlen; scalar_t__ param2; int /*<<< orphan*/  param1; TYPE_4__ opcode; } ;
struct TYPE_10__ {int /*<<< orphan*/  se_req; int /*<<< orphan*/  dma_mode; scalar_t__ grp; } ;
struct TYPE_11__ {TYPE_1__ s; } ;
struct cpt_request_info {TYPE_9__ req; TYPE_8__* in; TYPE_2__ ctrl; } ;
struct cvm_req_ctx {int control_word; struct cpt_request_info cpt_req; struct fc_context fctx; } ;
struct cvm_enc_ctx {scalar_t__ cipher_type; int key_len; int /*<<< orphan*/  enc_key; int /*<<< orphan*/  key_type; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; } ;
struct TYPE_17__ {int size; int /*<<< orphan*/ * vptr; } ;

/* Variables and functions */
 scalar_t__ AES_XTS ; 
 int CONTROL_WORD_LEN ; 
 int /*<<< orphan*/  DMA_GATHER_SCATTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FROM_DPTR ; 
 int MAJOR_OP_FC ; 
 int /*<<< orphan*/  SE_CORE_REQ ; 
 struct cvm_req_ctx* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (int) ; 
 struct cvm_enc_ctx* FUNC3 (struct crypto_ablkcipher*) ; 
 size_t FUNC4 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC5 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline u32 FUNC7(struct ablkcipher_request *req, u32 enc,
				 u32 *argcnt)
{
	struct crypto_ablkcipher *tfm = FUNC5(req);
	struct cvm_enc_ctx *ctx = FUNC3(tfm);
	struct cvm_req_ctx *rctx = FUNC1(req);
	struct fc_context *fctx = &rctx->fctx;
	u64 *offset_control = &rctx->control_word;
	u32 enc_iv_len = FUNC4(tfm);
	struct cpt_request_info *req_info = &rctx->cpt_req;
	u64 *ctrl_flags = NULL;

	req_info->ctrl.s.grp = 0;
	req_info->ctrl.s.dma_mode = DMA_GATHER_SCATTER;
	req_info->ctrl.s.se_req = SE_CORE_REQ;

	req_info->req.opcode.s.major = MAJOR_OP_FC |
					FUNC0(DMA_GATHER_SCATTER);
	if (enc)
		req_info->req.opcode.s.minor = 2;
	else
		req_info->req.opcode.s.minor = 3;

	req_info->req.param1 = req->nbytes; /* Encryption Data length */
	req_info->req.param2 = 0; /*Auth data length */

	fctx->enc.enc_ctrl.e.enc_cipher = ctx->cipher_type;
	fctx->enc.enc_ctrl.e.aes_key = ctx->key_type;
	fctx->enc.enc_ctrl.e.iv_source = FROM_DPTR;

	if (ctx->cipher_type == AES_XTS)
		FUNC6(fctx->enc.encr_key, ctx->enc_key, ctx->key_len * 2);
	else
		FUNC6(fctx->enc.encr_key, ctx->enc_key, ctx->key_len);
	ctrl_flags = (u64 *)&fctx->enc.enc_ctrl.flags;
	*ctrl_flags = FUNC2(*ctrl_flags);

	*offset_control = FUNC2(((u64)(enc_iv_len) << 16));
	/* Storing  Packet Data Information in offset
	 * Control Word First 8 bytes
	 */
	req_info->in[*argcnt].vptr = (u8 *)offset_control;
	req_info->in[*argcnt].size = CONTROL_WORD_LEN;
	req_info->req.dlen += CONTROL_WORD_LEN;
	++(*argcnt);

	req_info->in[*argcnt].vptr = (u8 *)fctx;
	req_info->in[*argcnt].size = sizeof(struct fc_context);
	req_info->req.dlen += sizeof(struct fc_context);

	++(*argcnt);

	return 0;
}