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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct drm_i915_private* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct intel_crtc *crtc,
				const u16 preoff[3],
				const u16 coeff[9],
				const u16 postoff[3])
{
	struct drm_i915_private *dev_priv = FUNC14(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	FUNC0(FUNC11(pipe), preoff[0]);
	FUNC0(FUNC13(pipe), preoff[1]);
	FUNC0(FUNC12(pipe), preoff[2]);

	FUNC0(FUNC7(pipe), coeff[0] << 16 | coeff[1]);
	FUNC0(FUNC4(pipe), coeff[2] << 16);

	FUNC0(FUNC5(pipe), coeff[3] << 16 | coeff[4]);
	FUNC0(FUNC2(pipe), coeff[5] << 16);

	FUNC0(FUNC6(pipe), coeff[6] << 16 | coeff[7]);
	FUNC0(FUNC3(pipe), coeff[8] << 16);

	if (FUNC1(dev_priv) >= 7) {
		FUNC0(FUNC8(pipe), postoff[0]);
		FUNC0(FUNC10(pipe), postoff[1]);
		FUNC0(FUNC9(pipe), postoff[2]);
	}
}