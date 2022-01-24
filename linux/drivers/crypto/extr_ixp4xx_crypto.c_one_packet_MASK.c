#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {scalar_t__ npe_ctx; } ;
struct ixp_ctx {int /*<<< orphan*/  completion; int /*<<< orphan*/  configuring; TYPE_2__ decrypt; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfm; struct ablkcipher_request* ablk_req; struct aead_request* aead_req; } ;
struct crypt_ctl {int ctl_flags; TYPE_1__ data; int /*<<< orphan*/  src_buf; TYPE_6__* regist_buf; TYPE_6__* regist_ptr; int /*<<< orphan*/  dst_buf; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* complete ) (TYPE_4__*,int) ;} ;
struct aead_request {TYPE_4__ base; } ;
struct aead_ctx {int /*<<< orphan*/  hmac_virt; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* complete ) (TYPE_3__*,int) ;} ;
struct ablkcipher_request {TYPE_3__ base; } ;
struct ablk_ctx {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
typedef  int dma_addr_t ;
struct TYPE_12__ {int /*<<< orphan*/  phys_addr; } ;
struct TYPE_11__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CIPH_ENCR ; 
#define  CTL_FLAG_GEN_ICV 131 
#define  CTL_FLAG_GEN_REVAES 130 
 int CTL_FLAG_MASK ; 
#define  CTL_FLAG_PERFORM_ABLK 129 
#define  CTL_FLAG_PERFORM_AEAD 128 
 int CTL_FLAG_UNUSED ; 
 int EBADMSG ; 
 struct ablk_ctx* FUNC1 (struct ablkcipher_request*) ; 
 struct aead_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buffer_pool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct crypt_ctl* FUNC6 (int) ; 
 struct ixp_ctx* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx_pool ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct crypt_ctl*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* pdev ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC13(dma_addr_t phys)
{
	struct device *dev = &pdev->dev;
	struct crypt_ctl *crypt;
	struct ixp_ctx *ctx;
	int failed;

	failed = phys & 0x1 ? -EBADMSG : 0;
	phys &= ~0x3;
	crypt = FUNC6(phys);

	switch (crypt->ctl_flags & CTL_FLAG_MASK) {
	case CTL_FLAG_PERFORM_AEAD: {
		struct aead_request *req = crypt->data.aead_req;
		struct aead_ctx *req_ctx = FUNC2(req);

		FUNC10(dev, req_ctx->src, crypt->src_buf);
		FUNC10(dev, req_ctx->dst, crypt->dst_buf);
		if (req_ctx->hmac_virt) {
			FUNC9(crypt);
		}
		req->base.complete(&req->base, failed);
		break;
	}
	case CTL_FLAG_PERFORM_ABLK: {
		struct ablkcipher_request *req = crypt->data.ablk_req;
		struct ablk_ctx *req_ctx = FUNC1(req);

		if (req_ctx->dst) {
			FUNC10(dev, req_ctx->dst, crypt->dst_buf);
		}
		FUNC10(dev, req_ctx->src, crypt->src_buf);
		req->base.complete(&req->base, failed);
		break;
	}
	case CTL_FLAG_GEN_ICV:
		ctx = FUNC7(crypt->data.tfm);
		FUNC8(ctx_pool, crypt->regist_ptr,
				crypt->regist_buf->phys_addr);
		FUNC8(buffer_pool, crypt->regist_buf, crypt->src_buf);
		if (FUNC3(&ctx->configuring))
			FUNC4(&ctx->completion);
		break;
	case CTL_FLAG_GEN_REVAES:
		ctx = FUNC7(crypt->data.tfm);
		*(u32*)ctx->decrypt.npe_ctx &= FUNC5(~CIPH_ENCR);
		if (FUNC3(&ctx->configuring))
			FUNC4(&ctx->completion);
		break;
	default:
		FUNC0();
	}
	crypt->ctl_flags = CTL_FLAG_UNUSED;
}