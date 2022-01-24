#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
#define  PLANE_CTL_TILED_LINEAR 131 
#define  PLANE_CTL_TILED_X 130 
#define  PLANE_CTL_TILED_Y 129 
#define  PLANE_CTL_TILED_YF 128 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct intel_vgpu *vgpu, int pipe,
	u32 tiled, int stride_mask, int bpp)
{
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

	u32 stride_reg = FUNC3(vgpu, FUNC0(pipe)) & stride_mask;
	u32 stride = stride_reg;

	if (FUNC1(dev_priv) >= 9) {
		switch (tiled) {
		case PLANE_CTL_TILED_LINEAR:
			stride = stride_reg * 64;
			break;
		case PLANE_CTL_TILED_X:
			stride = stride_reg * 512;
			break;
		case PLANE_CTL_TILED_Y:
			stride = stride_reg * 128;
			break;
		case PLANE_CTL_TILED_YF:
			if (bpp == 8)
				stride = stride_reg * 64;
			else if (bpp == 16 || bpp == 32 || bpp == 64)
				stride = stride_reg * 128;
			else
				FUNC2("skl: unsupported bpp:%d\n", bpp);
			break;
		default:
			FUNC2("skl: unsupported tile format:%x\n",
				tiled);
		}
	}

	return stride;
}