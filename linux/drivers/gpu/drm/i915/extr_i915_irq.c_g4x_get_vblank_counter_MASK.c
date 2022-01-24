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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct drm_crtc*) ; 

u32 FUNC4(struct drm_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC2(crtc->dev);
	enum pipe pipe = FUNC3(crtc)->pipe;

	return FUNC0(FUNC1(pipe));
}