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
struct exynos_drm_ipp {int dummy; } ;
struct fimc_context {struct exynos_drm_ipp ipp; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct fimc_context* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct exynos_drm_ipp*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			void *data)
{
	struct fimc_context *ctx = FUNC0(dev);
	struct drm_device *drm_dev = data;
	struct exynos_drm_ipp *ipp = &ctx->ipp;

	FUNC1(dev, ipp);
	FUNC2(drm_dev, dev);
}