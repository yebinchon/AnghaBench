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
struct omap_aes_reqctx {unsigned long mode; } ;
struct omap_aes_dev {int dummy; } ;
struct omap_aes_ctx {int /*<<< orphan*/  fallback; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ablkcipher_request {scalar_t__ nbytes; int /*<<< orphan*/  info; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned long FLAGS_CBC ; 
 unsigned long FLAGS_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_aes_reqctx* FUNC1 (struct ablkcipher_request*) ; 
 scalar_t__ aes_fallback_sz ; 
 struct omap_aes_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct omap_aes_dev* FUNC6 (struct omap_aes_reqctx*) ; 
 int FUNC7 (struct omap_aes_dev*,struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 

__attribute__((used)) static int FUNC13(struct ablkcipher_request *req, unsigned long mode)
{
	struct omap_aes_ctx *ctx = FUNC2(
			FUNC3(req));
	struct omap_aes_reqctx *rctx = FUNC1(req);
	struct omap_aes_dev *dd;
	int ret;

	FUNC8("nbytes: %d, enc: %d, cbc: %d\n", req->nbytes,
		  !!(mode & FLAGS_ENCRYPT),
		  !!(mode & FLAGS_CBC));

	if (req->nbytes < aes_fallback_sz) {
		FUNC0(subreq, ctx->fallback);

		FUNC11(subreq, ctx->fallback);
		FUNC9(subreq, req->base.flags, NULL,
					      NULL);
		FUNC10(subreq, req->src, req->dst,
					   req->nbytes, req->info);

		if (mode & FLAGS_ENCRYPT)
			ret = FUNC5(subreq);
		else
			ret = FUNC4(subreq);

		FUNC12(subreq);
		return ret;
	}
	dd = FUNC6(rctx);
	if (!dd)
		return -ENODEV;

	rctx->mode = mode;

	return FUNC7(dd, req);
}