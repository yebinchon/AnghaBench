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
struct intel_crtc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DISPLAY_PLANE_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DPLL_VGA_MODE_DIS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MCURSOR_MODE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  PIPE_B ; 
 int /*<<< orphan*/  PLANE_A ; 
 int /*<<< orphan*/  PLANE_B ; 
 int /*<<< orphan*/  PLANE_C ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct intel_crtc* FUNC9 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(struct drm_i915_private *dev_priv, enum pipe pipe)
{
	struct intel_crtc *crtc = FUNC9(dev_priv, pipe);

	FUNC2("disabling pipe %c due to force quirk\n",
		      FUNC11(pipe));

	FUNC8(FUNC4(FUNC3(PLANE_A)) & DISPLAY_PLANE_ENABLE);
	FUNC8(FUNC4(FUNC3(PLANE_B)) & DISPLAY_PLANE_ENABLE);
	FUNC8(FUNC4(FUNC3(PLANE_C)) & DISPLAY_PLANE_ENABLE);
	FUNC8(FUNC4(FUNC0(PIPE_A)) & MCURSOR_MODE);
	FUNC8(FUNC4(FUNC0(PIPE_B)) & MCURSOR_MODE);

	FUNC5(FUNC6(pipe), 0);
	FUNC7(FUNC6(pipe));

	FUNC10(crtc);

	FUNC5(FUNC1(pipe), DPLL_VGA_MODE_DIS);
	FUNC7(FUNC1(pipe));
}