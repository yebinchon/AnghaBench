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
struct intel_pipe_crc {int /*<<< orphan*/  lock; int /*<<< orphan*/  skipped; } ;
struct drm_crtc {size_t index; int /*<<< orphan*/  dev; } ;
struct intel_crtc {struct drm_crtc base; } ;
struct drm_i915_private {struct intel_pipe_crc* pipe_crc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct intel_crtc *intel_crtc)
{
	struct drm_crtc *crtc = &intel_crtc->base;
	struct drm_i915_private *dev_priv = FUNC6(crtc->dev);
	struct intel_pipe_crc *pipe_crc = &dev_priv->pipe_crc[crtc->index];

	/* Swallow crc's until we stop generating them. */
	FUNC4(&pipe_crc->lock);
	pipe_crc->skipped = INT_MIN;
	FUNC5(&pipe_crc->lock);

	FUNC0(FUNC1(crtc->index), 0);
	FUNC2(FUNC1(crtc->index));
	FUNC3(dev_priv);
}