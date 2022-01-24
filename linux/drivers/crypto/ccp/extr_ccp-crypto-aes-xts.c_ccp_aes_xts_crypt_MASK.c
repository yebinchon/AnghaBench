#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct TYPE_10__ {scalar_t__ key_len; int /*<<< orphan*/  key_sg; int /*<<< orphan*/  tfm_skcipher; } ;
struct TYPE_11__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct TYPE_12__ {unsigned int unit_size; scalar_t__ key_len; scalar_t__ src_len; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  iv_len; int /*<<< orphan*/ * iv; int /*<<< orphan*/ * key; int /*<<< orphan*/  action; int /*<<< orphan*/  type; } ;
struct TYPE_13__ {TYPE_3__ xts; } ;
struct TYPE_15__ {TYPE_4__ u; int /*<<< orphan*/  engine; int /*<<< orphan*/  entry; } ;
struct ccp_aes_req_ctx {TYPE_6__ cmd; int /*<<< orphan*/  iv_sg; int /*<<< orphan*/  iv; } ;
struct TYPE_16__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {scalar_t__ nbytes; TYPE_7__ base; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  info; } ;
struct TYPE_14__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 scalar_t__ AES_KEYSIZE_128 ; 
 scalar_t__ AES_KEYSIZE_256 ; 
 unsigned int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  CCP_AES_ACTION_DECRYPT ; 
 int /*<<< orphan*/  CCP_AES_ACTION_ENCRYPT ; 
 int /*<<< orphan*/  CCP_AES_TYPE_128 ; 
 int /*<<< orphan*/  CCP_ENGINE_XTS_AES_128 ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned int CCP_XTS_AES_UNIT_SIZE__LAST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ccp_aes_req_ctx* FUNC4 (struct ablkcipher_request*) ; 
 int FUNC5 (TYPE_7__*,TYPE_6__*) ; 
 unsigned int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct ccp_ctx* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 
 TYPE_5__* xts_unit_sizes ; 

__attribute__((used)) static int FUNC17(struct ablkcipher_request *req,
			     unsigned int encrypt)
{
	struct ccp_ctx *ctx = FUNC9(req->base.tfm);
	struct ccp_aes_req_ctx *rctx = FUNC4(req);
	unsigned int ccpversion = FUNC6();
	unsigned int fallback = 0;
	unsigned int unit;
	u32 unit_size;
	int ret;

	if (!ctx->u.aes.key_len)
		return -EINVAL;

	if (!req->info)
		return -EINVAL;

	/* Check conditions under which the CCP can fulfill a request. The
	 * device can handle input plaintext of a length that is a multiple
	 * of the unit_size, bug the crypto implementation only supports
	 * the unit_size being equal to the input length. This limits the
	 * number of scenarios we can handle.
	 */
	unit_size = CCP_XTS_AES_UNIT_SIZE__LAST;
	for (unit = 0; unit < FUNC0(xts_unit_sizes); unit++) {
		if (req->nbytes == xts_unit_sizes[unit].size) {
			unit_size = unit;
			break;
		}
	}
	/* The CCP has restrictions on block sizes. Also, a version 3 device
	 * only supports AES-128 operations; version 5 CCPs support both
	 * AES-128 and -256 operations.
	 */
	if (unit_size == CCP_XTS_AES_UNIT_SIZE__LAST)
		fallback = 1;
	if ((ccpversion < FUNC1(5, 0)) &&
	    (ctx->u.aes.key_len != AES_KEYSIZE_128))
		fallback = 1;
	if ((ctx->u.aes.key_len != AES_KEYSIZE_128) &&
	    (ctx->u.aes.key_len != AES_KEYSIZE_256))
		fallback = 1;
	if (fallback) {
		FUNC3(subreq,
					       ctx->u.aes.tfm_skcipher);

		/* Use the fallback to process the request for any
		 * unsupported unit sizes or key sizes
		 */
		FUNC15(subreq, ctx->u.aes.tfm_skcipher);
		FUNC13(subreq, req->base.flags,
					      NULL, NULL);
		FUNC14(subreq, req->src, req->dst,
					   req->nbytes, req->info);
		ret = encrypt ? FUNC8(subreq) :
				FUNC7(subreq);
		FUNC16(subreq);
		return ret;
	}

	FUNC10(rctx->iv, req->info, AES_BLOCK_SIZE);
	FUNC12(&rctx->iv_sg, rctx->iv, AES_BLOCK_SIZE);

	FUNC11(&rctx->cmd, 0, sizeof(rctx->cmd));
	FUNC2(&rctx->cmd.entry);
	rctx->cmd.engine = CCP_ENGINE_XTS_AES_128;
	rctx->cmd.u.xts.type = CCP_AES_TYPE_128;
	rctx->cmd.u.xts.action = (encrypt) ? CCP_AES_ACTION_ENCRYPT
					   : CCP_AES_ACTION_DECRYPT;
	rctx->cmd.u.xts.unit_size = unit_size;
	rctx->cmd.u.xts.key = &ctx->u.aes.key_sg;
	rctx->cmd.u.xts.key_len = ctx->u.aes.key_len;
	rctx->cmd.u.xts.iv = &rctx->iv_sg;
	rctx->cmd.u.xts.iv_len = AES_BLOCK_SIZE;
	rctx->cmd.u.xts.src = req->src;
	rctx->cmd.u.xts.src_len = req->nbytes;
	rctx->cmd.u.xts.dst = req->dst;

	ret = FUNC5(&req->base, &rctx->cmd);

	return ret;
}