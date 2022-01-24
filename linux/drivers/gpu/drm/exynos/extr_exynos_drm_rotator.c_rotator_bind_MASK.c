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
struct exynos_drm_ipp {struct drm_device* drm_dev; } ;
struct rot_context {int /*<<< orphan*/  num_formats; int /*<<< orphan*/  formats; struct drm_device* drm_dev; struct exynos_drm_ipp ipp; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DRM_EXYNOS_IPP_CAP_CROP ; 
 int DRM_EXYNOS_IPP_CAP_ROTATE ; 
 struct rot_context* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct exynos_drm_ipp*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct device*) ; 
 int /*<<< orphan*/  ipp_funcs ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device *master, void *data)
{
	struct rot_context *rot = FUNC0(dev);
	struct drm_device *drm_dev = data;
	struct exynos_drm_ipp *ipp = &rot->ipp;

	rot->drm_dev = drm_dev;
	ipp->drm_dev = drm_dev;
	FUNC3(drm_dev, dev);

	FUNC2(dev, ipp, &ipp_funcs,
			   DRM_EXYNOS_IPP_CAP_CROP | DRM_EXYNOS_IPP_CAP_ROTATE,
			   rot->formats, rot->num_formats, "rotator");

	FUNC1(dev, "The exynos rotator has been probed successfully\n");

	return 0;
}