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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_SELECT_MASK ; 
 int FUNC4 (unsigned int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder,
			       const struct intel_crtc_state *crtc_state,
			       unsigned int type,
			       void *frame, ssize_t len)
{
	struct drm_i915_private *dev_priv = FUNC5(encoder->base.dev);
	struct intel_crtc *crtc = FUNC6(crtc_state->base.crtc);
	u32 val, *data = frame;
	int i;

	val = FUNC0(FUNC2(crtc->pipe));

	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
	val |= FUNC4(type);

	FUNC1(FUNC2(crtc->pipe), val);

	for (i = 0; i < len; i += 4)
		*data++ = FUNC0(FUNC3(crtc->pipe));
}