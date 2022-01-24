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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct drm_property_blob const*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_color_lut const*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_crtc *crtc,
			    const struct drm_property_blob *blob)
{
	struct drm_i915_private *dev_priv = FUNC4(crtc->base.dev);
	const struct drm_color_lut *lut = blob->data;
	int i, lut_size = FUNC2(blob);
	enum pipe pipe = crtc->pipe;

	for (i = 0; i < lut_size; i++)
		FUNC0(FUNC1(pipe, i), FUNC3(&lut[i]));
}