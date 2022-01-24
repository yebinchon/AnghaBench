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
struct drm_device {int /*<<< orphan*/  dev; } ;
struct v3d_dev {struct drm_device drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_ERR_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct v3d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v3d_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct v3d_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v3d_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v3d_dev*) ; 

void
FUNC9(struct v3d_dev *v3d)
{
	struct drm_device *dev = &v3d->drm;

	FUNC0(dev->dev, "Resetting GPU for hang.\n");
	FUNC0(dev->dev, "V3D_ERR_STAT: 0x%08x\n",
		      FUNC1(0, V3D_ERR_STAT));
	FUNC2(dev);

	/* XXX: only needed for safe powerdown, not reset. */
	if (false)
		FUNC4(v3d, 0);

	FUNC5(v3d);
	FUNC8(v3d);

	FUNC7(v3d);
	FUNC6(v3d);

	FUNC3(dev);
}