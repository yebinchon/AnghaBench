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
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 long FUNC0 (struct file*,unsigned int,unsigned long) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

long FUNC4(struct file *filp,
		      unsigned int cmd, unsigned long arg)
{
	struct drm_file *file_priv = filp->private_data;
	struct drm_device *dev;
	long ret;
	dev = file_priv->minor->dev;
	ret = FUNC1(dev->dev);
	if (ret < 0)
		return ret;

	ret = FUNC0(filp, cmd, arg);

	FUNC2(dev->dev);
	FUNC3(dev->dev);
	return ret;
}