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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int id; int pipe; TYPE_2__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ uncore; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_plane*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct intel_plane *plane,
		  const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC8(plane->base.dev);
	enum plane_id plane_id = plane->id;
	enum pipe pipe = plane->pipe;
	unsigned long irqflags;

	FUNC6(&dev_priv->uncore.lock, irqflags);

	if (FUNC4(dev_priv, plane_id))
		FUNC0(FUNC2(pipe, plane_id), 0);

	FUNC5(plane, crtc_state);

	FUNC0(FUNC1(pipe, plane_id), 0);
	FUNC0(FUNC3(pipe, plane_id), 0);

	FUNC7(&dev_priv->uncore.lock, irqflags);
}