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
struct gma_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC0 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct gma_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gma_encoder*) ; 
 int FUNC6 (struct gma_encoder*) ; 
 struct gma_encoder* FUNC7 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC8(struct drm_encoder *encoder)
{
	struct gma_encoder *intel_encoder = FUNC7(encoder);
	int edp = FUNC6(intel_encoder);

	if (edp) {
		FUNC2(intel_encoder);
		FUNC3(intel_encoder);
		FUNC5(intel_encoder);
        }
	/* Wake up the sink first */
	FUNC1(intel_encoder, DRM_MODE_DPMS_ON);
	FUNC0(intel_encoder);
	if (edp)
		FUNC4(intel_encoder);
}