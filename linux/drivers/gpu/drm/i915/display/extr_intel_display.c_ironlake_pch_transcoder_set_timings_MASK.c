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
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 struct drm_i915_private* FUNC16 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(const struct intel_crtc_state *crtc_state,
						enum pipe pch_transcoder)
{
	struct intel_crtc *crtc = FUNC17(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC16(crtc->base.dev);
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;

	FUNC4(FUNC7(pch_transcoder),
		   FUNC3(FUNC2(cpu_transcoder)));
	FUNC4(FUNC5(pch_transcoder),
		   FUNC3(FUNC0(cpu_transcoder)));
	FUNC4(FUNC6(pch_transcoder),
		   FUNC3(FUNC1(cpu_transcoder)));

	FUNC4(FUNC11(pch_transcoder),
		   FUNC3(FUNC15(cpu_transcoder)));
	FUNC4(FUNC8(pch_transcoder),
		   FUNC3(FUNC12(cpu_transcoder)));
	FUNC4(FUNC9(pch_transcoder),
		   FUNC3(FUNC13(cpu_transcoder)));
	FUNC4(FUNC10(pch_transcoder),
		   FUNC3(FUNC14(cpu_transcoder)));
}