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
typedef  int uint32_t ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int /*<<< orphan*/  output_reg; } ;

/* Variables and functions */
 int DP_PORT_EN ; 
 int DRM_MODE_DPMS_ON ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct gma_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC10 (struct gma_encoder*) ; 
 int FUNC11 (struct gma_encoder*) ; 
 struct gma_encoder* FUNC12 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC13(struct drm_encoder *encoder, int mode)
{
	struct gma_encoder *intel_encoder = FUNC12(encoder);
	struct cdv_intel_dp *intel_dp = intel_encoder->dev_priv;
	struct drm_device *dev = encoder->dev;
	uint32_t dp_reg = FUNC0(intel_dp->output_reg);
	int edp = FUNC11(intel_encoder);

	if (mode != DRM_MODE_DPMS_ON) {
		if (edp) {
			FUNC5(intel_encoder);
			FUNC10(intel_encoder);
		}
		FUNC3(intel_encoder, mode);
		FUNC2(intel_encoder);
		if (edp) {
			FUNC9(intel_encoder);
			FUNC7(intel_encoder);
		}
	} else {
        	if (edp)
			FUNC8(intel_encoder);
		FUNC3(intel_encoder, mode);
		if (!(dp_reg & DP_PORT_EN)) {
			FUNC4(intel_encoder);
			FUNC1(intel_encoder);
		}
		if (edp)
        		FUNC6(intel_encoder);
	}
}