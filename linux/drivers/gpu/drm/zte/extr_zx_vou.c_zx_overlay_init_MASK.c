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
struct zx_vou_hw {scalar_t__ otfppu; scalar_t__ osd; struct device* dev; } ;
struct zx_plane {int /*<<< orphan*/ * bits; scalar_t__ rsz; scalar_t__ hbsc; scalar_t__ layer; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int VL_NUM ; 
 struct zx_plane* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_device*,struct zx_plane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * zx_vl_bits ; 

__attribute__((used)) static void FUNC6(struct drm_device *drm, struct zx_vou_hw *vou)
{
	struct device *dev = vou->dev;
	struct zx_plane *zplane;
	int i;
	int ret;

	/*
	 * VL0 has some quirks on scaling support which need special handling.
	 * Let's leave it out for now.
	 */
	for (i = 1; i < VL_NUM; i++) {
		zplane = FUNC4(dev, sizeof(*zplane), GFP_KERNEL);
		if (!zplane) {
			FUNC0(dev, "failed to allocate zplane %d\n", i);
			return;
		}

		zplane->layer = vou->osd + FUNC2(i);
		zplane->hbsc = vou->osd + FUNC1(i);
		zplane->rsz = vou->otfppu + FUNC3(i);
		zplane->bits = &zx_vl_bits[i];

		ret = FUNC5(drm, zplane, DRM_PLANE_TYPE_OVERLAY);
		if (ret) {
			FUNC0(dev, "failed to init overlay %d\n", i);
			continue;
		}
	}
}