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
typedef  int u8 ;
typedef  int u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_pwm_tacho_data {struct aspeed_cooling_device** cdev; } ;
struct aspeed_cooling_device {int pwm_port; struct aspeed_pwm_tacho_data* priv; int /*<<< orphan*/  tcdev; int /*<<< orphan*/  name; void* cooling_levels; int /*<<< orphan*/  max_state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_CDEV_NAME_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aspeed_pwm_cool_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct device_node*,int /*<<< orphan*/ ,struct aspeed_cooling_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device_node*,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device_node*,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
				     struct device_node *child,
				     struct aspeed_pwm_tacho_data *priv,
				     u32 pwm_port, u8 num_levels)
{
	int ret;
	struct aspeed_cooling_device *cdev;

	cdev = FUNC3(dev, sizeof(*cdev), GFP_KERNEL);

	if (!cdev)
		return -ENOMEM;

	cdev->cooling_levels = FUNC3(dev, num_levels, GFP_KERNEL);
	if (!cdev->cooling_levels)
		return -ENOMEM;

	cdev->max_state = num_levels - 1;
	ret = FUNC5(child, "cooling-levels",
					cdev->cooling_levels,
					num_levels);
	if (ret) {
		FUNC2(dev, "Property 'cooling-levels' cannot be read.\n");
		return ret;
	}
	FUNC6(cdev->name, MAX_CDEV_NAME_LEN, "%pOFn%d", child, pwm_port);

	cdev->tcdev = FUNC4(dev, child,
					cdev->name, cdev, &aspeed_pwm_cool_ops);
	if (FUNC0(cdev->tcdev))
		return FUNC1(cdev->tcdev);

	cdev->priv = priv;
	cdev->pwm_port = pwm_port;

	priv->cdev[pwm_port] = cdev;

	return 0;
}