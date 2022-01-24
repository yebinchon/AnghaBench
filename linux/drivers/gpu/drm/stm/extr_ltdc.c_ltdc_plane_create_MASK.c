#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ non_alpha_only_l1; int /*<<< orphan*/ * pix_fmt_hw; } ;
struct ltdc_device {TYPE_1__ caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_plane {TYPE_2__ base; } ;
struct drm_device {struct device* dev; struct ltdc_device* dev_private; } ;
struct device {int dummy; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 unsigned long CRTC_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NB_PF ; 
 struct drm_plane* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_plane*,unsigned long,int /*<<< orphan*/ *,scalar_t__*,unsigned int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * ltdc_format_modifiers ; 
 int /*<<< orphan*/  ltdc_plane_funcs ; 
 int /*<<< orphan*/  ltdc_plane_helper_funcs ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane *FUNC6(struct drm_device *ddev,
					   enum drm_plane_type type)
{
	unsigned long possible_crtcs = CRTC_MASK;
	struct ltdc_device *ldev = ddev->dev_private;
	struct device *dev = ddev->dev;
	struct drm_plane *plane;
	unsigned int i, nb_fmt = 0;
	u32 formats[NB_PF * 2];
	u32 drm_fmt, drm_fmt_no_alpha;
	const u64 *modifiers = ltdc_format_modifiers;
	int ret;

	/* Get supported pixel formats */
	for (i = 0; i < NB_PF; i++) {
		drm_fmt = FUNC5(ldev->caps.pix_fmt_hw[i]);
		if (!drm_fmt)
			continue;
		formats[nb_fmt++] = drm_fmt;

		/* Add the no-alpha related format if any & supported */
		drm_fmt_no_alpha = FUNC4(drm_fmt);
		if (!drm_fmt_no_alpha)
			continue;

		/* Manage hw-specific capabilities */
		if (ldev->caps.non_alpha_only_l1 &&
		    type != DRM_PLANE_TYPE_PRIMARY)
			continue;

		formats[nb_fmt++] = drm_fmt_no_alpha;
	}

	plane = FUNC1(dev, sizeof(*plane), GFP_KERNEL);
	if (!plane)
		return NULL;

	ret = FUNC3(ddev, plane, possible_crtcs,
				       &ltdc_plane_funcs, formats, nb_fmt,
				       modifiers, type, NULL);
	if (ret < 0)
		return NULL;

	FUNC2(plane, &ltdc_plane_helper_funcs);

	FUNC0("plane:%d created\n", plane->base.id);

	return plane;
}