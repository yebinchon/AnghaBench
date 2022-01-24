#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__* config; TYPE_4__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* get_fifo_size ) (struct drm_i915_private*,int /*<<< orphan*/ ) ;} ;
struct drm_i915_private {TYPE_3__ display; } ;
struct drm_display_mode {int /*<<< orphan*/  crtc_clock; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_6__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FW_BLC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PLANE_A ; 
 int /*<<< orphan*/  i845_wm_info ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pessimal_latency_ns ; 
 struct intel_crtc* FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_crtc *unused_crtc)
{
	struct drm_i915_private *dev_priv = FUNC6(unused_crtc->base.dev);
	struct intel_crtc *crtc;
	const struct drm_display_mode *adjusted_mode;
	u32 fwater_lo;
	int planea_wm;

	crtc = FUNC4(dev_priv);
	if (crtc == NULL)
		return;

	adjusted_mode = &crtc->config->base.adjusted_mode;
	planea_wm = FUNC3(adjusted_mode->crtc_clock,
				       &i845_wm_info,
				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
				       4, pessimal_latency_ns);
	fwater_lo = FUNC1(FW_BLC) & ~0xfff;
	fwater_lo |= (3<<8) | planea_wm;

	FUNC0("Setting FIFO watermarks - A: %d\n", planea_wm);

	FUNC2(FW_BLC, fwater_lo);
}