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
struct msm_fence_context {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  event; int /*<<< orphan*/  context; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct msm_fence_context* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct msm_fence_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

struct msm_fence_context *
FUNC6(struct drm_device *dev, const char *name)
{
	struct msm_fence_context *fctx;

	fctx = FUNC3(sizeof(*fctx), GFP_KERNEL);
	if (!fctx)
		return FUNC0(-ENOMEM);

	fctx->dev = dev;
	FUNC5(fctx->name, name, sizeof(fctx->name));
	fctx->context = FUNC1(1);
	FUNC2(&fctx->event);
	FUNC4(&fctx->spinlock);

	return fctx;
}