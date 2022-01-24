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
typedef  size_t u32 ;
struct v3d_dev {int /*<<< orphan*/  dev; } ;
struct drm_v3d_get_param {scalar_t__ pad; size_t param; int value; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  DRM_V3D_PARAM_SUPPORTS_CSD 143 
#define  DRM_V3D_PARAM_SUPPORTS_TFU 142 
#define  DRM_V3D_PARAM_V3D_CORE0_IDENT0 141 
#define  DRM_V3D_PARAM_V3D_CORE0_IDENT1 140 
#define  DRM_V3D_PARAM_V3D_CORE0_IDENT2 139 
#define  DRM_V3D_PARAM_V3D_HUB_IDENT1 138 
#define  DRM_V3D_PARAM_V3D_HUB_IDENT2 137 
#define  DRM_V3D_PARAM_V3D_HUB_IDENT3 136 
#define  DRM_V3D_PARAM_V3D_UIFCFG 135 
 int EINVAL ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t) ; 
#define  V3D_CTL_IDENT0 134 
#define  V3D_CTL_IDENT1 133 
#define  V3D_CTL_IDENT2 132 
#define  V3D_HUB_IDENT1 131 
#define  V3D_HUB_IDENT2 130 
#define  V3D_HUB_IDENT3 129 
#define  V3D_HUB_UIFCFG 128 
 int FUNC3 (size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct v3d_dev* FUNC7 (struct drm_device*) ; 
 int FUNC8 (struct v3d_dev*) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev, void *data,
			       struct drm_file *file_priv)
{
	struct v3d_dev *v3d = FUNC7(dev);
	struct drm_v3d_get_param *args = data;
	int ret;
	static const u32 reg_map[] = {
		[DRM_V3D_PARAM_V3D_UIFCFG] = V3D_HUB_UIFCFG,
		[DRM_V3D_PARAM_V3D_HUB_IDENT1] = V3D_HUB_IDENT1,
		[DRM_V3D_PARAM_V3D_HUB_IDENT2] = V3D_HUB_IDENT2,
		[DRM_V3D_PARAM_V3D_HUB_IDENT3] = V3D_HUB_IDENT3,
		[DRM_V3D_PARAM_V3D_CORE0_IDENT0] = V3D_CTL_IDENT0,
		[DRM_V3D_PARAM_V3D_CORE0_IDENT1] = V3D_CTL_IDENT1,
		[DRM_V3D_PARAM_V3D_CORE0_IDENT2] = V3D_CTL_IDENT2,
	};

	if (args->pad != 0)
		return -EINVAL;

	/* Note that DRM_V3D_PARAM_V3D_CORE0_IDENT0 is 0, so we need
	 * to explicitly allow it in the "the register in our
	 * parameter map" check.
	 */
	if (args->param < FUNC0(reg_map) &&
	    (reg_map[args->param] ||
	     args->param == DRM_V3D_PARAM_V3D_CORE0_IDENT0)) {
		u32 offset = reg_map[args->param];

		if (args->value != 0)
			return -EINVAL;

		ret = FUNC4(v3d->dev);
		if (ret < 0)
			return ret;
		if (args->param >= DRM_V3D_PARAM_V3D_CORE0_IDENT0 &&
		    args->param <= DRM_V3D_PARAM_V3D_CORE0_IDENT2) {
			args->value = FUNC2(0, offset);
		} else {
			args->value = FUNC3(offset);
		}
		FUNC5(v3d->dev);
		FUNC6(v3d->dev);
		return 0;
	}


	switch (args->param) {
	case DRM_V3D_PARAM_SUPPORTS_TFU:
		args->value = 1;
		return 0;
	case DRM_V3D_PARAM_SUPPORTS_CSD:
		args->value = FUNC8(v3d);
		return 0;
	default:
		FUNC1("Unknown parameter %d\n", args->param);
		return -EINVAL;
	}
}