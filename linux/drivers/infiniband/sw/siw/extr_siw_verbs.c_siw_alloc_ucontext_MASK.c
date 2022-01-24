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
typedef  int /*<<< orphan*/  uresp ;
struct siw_uresp_alloc_ctx {int /*<<< orphan*/  dev_id; } ;
struct siw_ucontext {struct siw_device* sdev; scalar_t__ uobj_nextkey; int /*<<< orphan*/  xa; } ;
struct siw_device {int /*<<< orphan*/  num_ctx; int /*<<< orphan*/  vendor_part_id; } ;
struct ib_udata {int outlen; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ SIW_MAX_CONTEXT ; 
 int /*<<< orphan*/  XA_FLAGS_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ib_udata*,struct siw_uresp_alloc_ctx*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct siw_ucontext* FUNC5 (struct ib_ucontext*) ; 
 struct siw_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(struct ib_ucontext *base_ctx, struct ib_udata *udata)
{
	struct siw_device *sdev = FUNC6(base_ctx->device);
	struct siw_ucontext *ctx = FUNC5(base_ctx);
	struct siw_uresp_alloc_ctx uresp = {};
	int rv;

	if (FUNC1(&sdev->num_ctx) > SIW_MAX_CONTEXT) {
		rv = -ENOMEM;
		goto err_out;
	}
	FUNC7(&ctx->xa, XA_FLAGS_ALLOC);
	ctx->uobj_nextkey = 0;
	ctx->sdev = sdev;

	uresp.dev_id = sdev->vendor_part_id;

	if (udata->outlen < sizeof(uresp)) {
		rv = -EINVAL;
		goto err_out;
	}
	rv = FUNC3(udata, &uresp, sizeof(uresp));
	if (rv)
		goto err_out;

	FUNC4(base_ctx->device, "success. now %d context(s)\n",
		FUNC2(&sdev->num_ctx));

	return 0;

err_out:
	FUNC0(&sdev->num_ctx);
	FUNC4(base_ctx->device, "failure %d. now %d context(s)\n", rv,
		FUNC2(&sdev->num_ctx));

	return rv;
}