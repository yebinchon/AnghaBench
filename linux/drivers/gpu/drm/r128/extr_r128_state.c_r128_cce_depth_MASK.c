#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;
struct TYPE_6__ {int func; } ;
typedef  TYPE_1__ drm_r128_depth_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_file*) ; 
#define  R128_READ_PIXELS 131 
#define  R128_READ_SPAN 130 
#define  R128_WRITE_PIXELS 129 
#define  R128_WRITE_SPAN 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,TYPE_1__*) ; 
 int FUNC5 (struct drm_device*,TYPE_1__*) ; 
 int FUNC6 (struct drm_device*,TYPE_1__*) ; 
 int FUNC7 (struct drm_device*,TYPE_1__*) ; 

int FUNC8(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	drm_r128_depth_t *depth = data;
	int ret;

	FUNC2(dev, file_priv);

	FUNC1(dev_priv);

	FUNC3(dev_priv);

	ret = -EINVAL;
	switch (depth->func) {
	case R128_WRITE_SPAN:
		ret = FUNC7(dev, depth);
		break;
	case R128_WRITE_PIXELS:
		ret = FUNC6(dev, depth);
		break;
	case R128_READ_SPAN:
		ret = FUNC5(dev, depth);
		break;
	case R128_READ_PIXELS:
		ret = FUNC4(dev, depth);
		break;
	}

	FUNC0();
	return ret;
}