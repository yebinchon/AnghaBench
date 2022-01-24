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
typedef  int /*<<< orphan*/  uint64_t ;
struct ipu_soc {int dummy; } ;
struct ipu_plane {int dma; int dp_flow; int /*<<< orphan*/  base; struct ipu_soc* ipu; } ;
struct drm_device {int dummy; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 struct ipu_plane* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IPU_DP_FLOW_SYNC_BG ; 
 int IPU_DP_FLOW_SYNC_FG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ipu_format_modifiers ; 
 int /*<<< orphan*/  ipu_plane_formats ; 
 int /*<<< orphan*/  ipu_plane_funcs ; 
 int /*<<< orphan*/  ipu_plane_helper_funcs ; 
 scalar_t__ FUNC8 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ipu_plane*) ; 
 struct ipu_plane* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pre_format_modifiers ; 

struct ipu_plane *FUNC11(struct drm_device *dev, struct ipu_soc *ipu,
				 int dma, int dp, unsigned int possible_crtcs,
				 enum drm_plane_type type)
{
	struct ipu_plane *ipu_plane;
	const uint64_t *modifiers = ipu_format_modifiers;
	unsigned int zpos = (type == DRM_PLANE_TYPE_PRIMARY) ? 0 : 1;
	int ret;

	FUNC1("channel %d, dp flow %d, possible_crtcs=0x%x\n",
		      dma, dp, possible_crtcs);

	ipu_plane = FUNC10(sizeof(*ipu_plane), GFP_KERNEL);
	if (!ipu_plane) {
		FUNC2("failed to allocate plane\n");
		return FUNC3(-ENOMEM);
	}

	ipu_plane->ipu = ipu;
	ipu_plane->dma = dma;
	ipu_plane->dp_flow = dp;

	if (FUNC8(ipu))
		modifiers = pre_format_modifiers;

	ret = FUNC7(dev, &ipu_plane->base, possible_crtcs,
				       &ipu_plane_funcs, ipu_plane_formats,
				       FUNC0(ipu_plane_formats),
				       modifiers, type, NULL);
	if (ret) {
		FUNC2("failed to initialize plane\n");
		FUNC9(ipu_plane);
		return FUNC3(ret);
	}

	FUNC6(&ipu_plane->base, &ipu_plane_helper_funcs);

	if (dp == IPU_DP_FLOW_SYNC_BG || dp == IPU_DP_FLOW_SYNC_FG)
		FUNC5(&ipu_plane->base, zpos, 0, 1);
	else
		FUNC4(&ipu_plane->base, 0);

	return ipu_plane;
}