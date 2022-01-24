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
struct device {int dummy; } ;
struct decon_context {int /*<<< orphan*/  dev; int /*<<< orphan*/  drm_dev; int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct decon_context* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master, void *data)
{
	struct decon_context *ctx = FUNC1(dev);

	FUNC0(ctx->crtc);

	/* detach this sub driver from iommu mapping if supported. */
	FUNC2(ctx->drm_dev, ctx->dev);
}