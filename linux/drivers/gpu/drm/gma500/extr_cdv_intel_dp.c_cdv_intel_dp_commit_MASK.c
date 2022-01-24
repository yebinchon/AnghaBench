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
 int /*<<< orphan*/  FUNC0 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct gma_encoder*) ; 
 int FUNC4 (struct gma_encoder*) ; 
 struct gma_encoder* FUNC5 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder)
{
	struct gma_encoder *intel_encoder = FUNC5(encoder);
	int edp = FUNC4(intel_encoder);

	if (edp)
		FUNC3(intel_encoder);
	FUNC1(intel_encoder);
	FUNC0(intel_encoder);
	if (edp)
		FUNC2(intel_encoder);
}