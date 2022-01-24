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
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_cs {int id; int /*<<< orphan*/  mmio_base; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
#define  BCS0 131 
 int /*<<< orphan*/  BLT_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  BSD_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  RCS0 130 
 int /*<<< orphan*/  RENDER_HWS_PGA_GEN7 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  VCS0 129 
 int /*<<< orphan*/  VEBOX_HWS_PGA_GEN7 ; 
#define  VECS0 128 

__attribute__((used)) static void FUNC6(struct intel_engine_cs *engine, u32 offset)
{
	struct drm_i915_private *dev_priv = engine->i915;
	i915_reg_t hwsp;

	/*
	 * The ring status page addresses are no longer next to the rest of
	 * the ring registers as of gen7.
	 */
	if (FUNC2(dev_priv, 7)) {
		switch (engine->id) {
		/*
		 * No more rings exist on Gen7. Default case is only to shut up
		 * gcc switch check warning.
		 */
		default:
			FUNC0(engine->id);
			/* fallthrough */
		case RCS0:
			hwsp = RENDER_HWS_PGA_GEN7;
			break;
		case BCS0:
			hwsp = BLT_HWS_PGA_GEN7;
			break;
		case VCS0:
			hwsp = BSD_HWS_PGA_GEN7;
			break;
		case VECS0:
			hwsp = VEBOX_HWS_PGA_GEN7;
			break;
		}
	} else if (FUNC2(dev_priv, 6)) {
		hwsp = FUNC5(engine->mmio_base);
	} else {
		hwsp = FUNC4(engine->mmio_base);
	}

	FUNC1(hwsp, offset);
	FUNC3(hwsp);
}