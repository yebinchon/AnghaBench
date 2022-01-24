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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  irq_lock; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GEN7_ERR_INT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC9(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC7(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	u32 err_int = FUNC2(GEN7_ERR_INT);

	FUNC5(&dev_priv->irq_lock);

	if ((err_int & FUNC1(pipe)) == 0)
		return;

	FUNC3(GEN7_ERR_INT, FUNC1(pipe));
	FUNC4(GEN7_ERR_INT);

	FUNC8(dev_priv, pipe);
	FUNC0("fifo underrun on pipe %c\n", FUNC6(pipe));
}