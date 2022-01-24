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
struct drm_color_lut {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_color_lut const*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_color_lut const*) ; 
 int FUNC4 (struct drm_property_blob const*) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_crtc *crtc,
				 const struct drm_property_blob *blob)
{
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	const struct drm_color_lut *lut = blob->data;
	int i, lut_size = FUNC4(blob);
	enum pipe pipe = crtc->pipe;

	for (i = 0; i < lut_size; i++) {
		FUNC1(FUNC0(pipe, i, 0),
			   FUNC2(&lut[i]));
		FUNC1(FUNC0(pipe, i, 1),
			   FUNC3(&lut[i]));
	}
}