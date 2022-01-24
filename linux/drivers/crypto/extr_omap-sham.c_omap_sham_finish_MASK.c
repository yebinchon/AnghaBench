#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct omap_sham_reqctx {int flags; int /*<<< orphan*/  bufcnt; scalar_t__ digcnt; struct omap_sham_dev* dd; } ;
struct omap_sham_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAGS_AUTO_XOR ; 
 int /*<<< orphan*/  FLAGS_HMAC ; 
 struct omap_sham_reqctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*) ; 
 int FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req)
{
	struct omap_sham_reqctx *ctx = FUNC1(req);
	struct omap_sham_dev *dd = ctx->dd;
	int err = 0;

	if (ctx->digcnt) {
		FUNC3(req);
		if ((ctx->flags & FUNC0(FLAGS_HMAC)) &&
				!FUNC5(FLAGS_AUTO_XOR, &dd->flags))
			err = FUNC4(req);
	}

	FUNC2(dd->dev, "digcnt: %d, bufcnt: %d\n", ctx->digcnt, ctx->bufcnt);

	return err;
}