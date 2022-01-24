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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_property_blob {struct drm_color_lut* data; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_lut {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct drm_property_blob const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_color_lut const*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_color_lut const*) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_crtc *crtc,
			       const struct drm_property_blob *blob)
{
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	const struct drm_color_lut *lut = blob->data;
	int i, lut_size = FUNC3(blob);
	enum pipe pipe = crtc->pipe;

	for (i = 0; i < lut_size - 1; i++) {
		FUNC0(FUNC1(pipe, 2 * i + 0),
			   FUNC4(&lut[i]));
		FUNC0(FUNC1(pipe, 2 * i + 1),
			   FUNC5(&lut[i]));
	}

	FUNC0(FUNC2(pipe, 0), lut[i].red);
	FUNC0(FUNC2(pipe, 1), lut[i].green);
	FUNC0(FUNC2(pipe, 2), lut[i].blue);
}