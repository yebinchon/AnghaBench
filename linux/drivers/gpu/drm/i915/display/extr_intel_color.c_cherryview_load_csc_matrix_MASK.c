#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u16 ;
struct TYPE_6__ {TYPE_2__* ctm; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cgm_mode; TYPE_3__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_ctm {unsigned long long* matrix; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_5__ {struct drm_color_ctm* data; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ CTM_COEFF_8_0 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC10(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC9(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	if (crtc_state->base.ctm) {
		const struct drm_color_ctm *ctm = crtc_state->base.ctm->data;
		u16 coeffs[9] = {};
		int i;

		for (i = 0; i < FUNC0(coeffs); i++) {
			u64 abs_coeff =
				((1ULL << 63) - 1) & ctm->matrix[i];

			/* Round coefficient. */
			abs_coeff += 1 << (32 - 13);
			/* Clamp to hardware limits. */
			abs_coeff = FUNC8(abs_coeff, 0, CTM_COEFF_8_0 - 1);

			/* Write coefficients in S3.12 format. */
			if (ctm->matrix[i] & (1ULL << 63))
				coeffs[i] = 1 << 15;
			coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
			coeffs[i] |= (abs_coeff >> 20) & 0xfff;
		}

		FUNC7(FUNC1(pipe),
			   coeffs[1] << 16 | coeffs[0]);
		FUNC7(FUNC2(pipe),
			   coeffs[3] << 16 | coeffs[2]);
		FUNC7(FUNC3(pipe),
			   coeffs[5] << 16 | coeffs[4]);
		FUNC7(FUNC4(pipe),
			   coeffs[7] << 16 | coeffs[6]);
		FUNC7(FUNC5(pipe), coeffs[8]);
	}

	FUNC7(FUNC6(pipe), crtc_state->cgm_mode);
}