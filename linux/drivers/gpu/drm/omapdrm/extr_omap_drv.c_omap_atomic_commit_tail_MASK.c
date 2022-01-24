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
struct omap_drm_private {int omaprev; int /*<<< orphan*/  dispc; TYPE_1__* dispc_ops; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* runtime_put ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* runtime_get ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct drm_atomic_state *old_state)
{
	struct drm_device *dev = old_state->dev;
	struct omap_drm_private *priv = dev->dev_private;

	priv->dispc_ops->runtime_get(priv->dispc);

	/* Apply the atomic update. */
	FUNC2(dev, old_state);

	if (priv->omaprev != 0x3430) {
		/* With the current dss dispc implementation we have to enable
		 * the new modeset before we can commit planes. The dispc ovl
		 * configuration relies on the video mode configuration been
		 * written into the HW when the ovl configuration is
		 * calculated.
		 *
		 * This approach is not ideal because after a mode change the
		 * plane update is executed only after the first vblank
		 * interrupt. The dispc implementation should be fixed so that
		 * it is able use uncommitted drm state information.
		 */
		FUNC3(dev, old_state);
		FUNC5(dev, old_state);

		FUNC4(dev, old_state, 0);

		FUNC1(old_state);
	} else {
		/*
		 * OMAP3 DSS seems to have issues with the work-around above,
		 * resulting in endless sync losts if a crtc is enabled without
		 * a plane. For now, skip the WA for OMAP3.
		 */
		FUNC4(dev, old_state, 0);

		FUNC3(dev, old_state);

		FUNC1(old_state);
	}

	/*
	 * Wait for completion of the page flips to ensure that old buffers
	 * can't be touched by the hardware anymore before cleaning up planes.
	 */
	FUNC5(dev, old_state);

	FUNC0(dev, old_state);

	priv->dispc_ops->runtime_put(priv->dispc);
}