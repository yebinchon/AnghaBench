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
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* pdev; int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;
struct TYPE_4__ {int param; int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ drm_r128_getparam_t ;
struct TYPE_3__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
#define  R128_PARAM_IRQ_NR 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	drm_r128_getparam_t *param = data;
	int value;

	FUNC0(dev_priv);

	FUNC1("pid=%d\n", FUNC4(current));

	switch (param->param) {
	case R128_PARAM_IRQ_NR:
		value = dev->pdev->irq;
		break;
	default:
		return -EINVAL;
	}

	if (FUNC3(param->value, &value, sizeof(int))) {
		FUNC2("copy_to_user\n");
		return -EFAULT;
	}

	return 0;
}