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
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;
struct TYPE_2__ {scalar_t__ idle; scalar_t__ flush; } ;
typedef  TYPE_1__ drm_r128_cce_stop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

int FUNC7(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	drm_r128_cce_stop_t *stop = data;
	int ret;
	FUNC1("\n");

	FUNC2(dev, file_priv);

	FUNC0(dev_priv);

	/* Flush any pending CCE commands.  This ensures any outstanding
	 * commands are exectuted by the engine before we turn it off.
	 */
	if (stop->flush)
		FUNC3(dev_priv);

	/* If we fail to make the engine go idle, we return an error
	 * code so that the DRM ioctl wrapper can try again.
	 */
	if (stop->idle) {
		ret = FUNC4(dev_priv);
		if (ret)
			return ret;
	}

	/* Finally, we can turn off the CCE.  If the engine isn't idle,
	 * we will get some dropped triangles as they won't be fully
	 * rendered before the CCE is shut down.
	 */
	FUNC5(dev_priv);

	/* Reset the engine */
	FUNC6(dev);

	return 0;
}