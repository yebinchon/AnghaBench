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
struct drm_device {struct bochs_device* dev_private; } ;
struct bochs_device {struct drm_device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct bochs_device*) ; 
 int FUNC2 (struct bochs_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 struct bochs_device* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev)
{
	struct bochs_device *bochs;
	int ret;

	bochs = FUNC4(sizeof(*bochs), GFP_KERNEL);
	if (bochs == NULL)
		return -ENOMEM;
	dev->dev_private = bochs;
	bochs->dev = dev;

	ret = FUNC0(dev);
	if (ret)
		goto err;

	ret = FUNC2(bochs);
	if (ret)
		goto err;

	ret = FUNC1(bochs);
	if (ret)
		goto err;

	return 0;

err:
	FUNC3(dev);
	return ret;
}