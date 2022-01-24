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
struct npcm7xx_pwm_fan_data {struct npcm7xx_cooling_device** cdev; } ;
struct npcm7xx_cooling_device {int pwm_port; struct npcm7xx_pwm_fan_data* data; int /*<<< orphan*/  tcdev; int /*<<< orphan*/  name; void* cooling_levels; int /*<<< orphan*/  max_state; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THERMAL_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct device_node*,int /*<<< orphan*/ ,struct npcm7xx_cooling_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  npcm7xx_pwm_cool_ops ; 
 int FUNC5 (struct device_node*,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device_node*,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
				      struct device_node *child,
				      struct npcm7xx_pwm_fan_data *data,
				      u32 pwm_port, u8 num_levels)
{
	int ret;
	struct npcm7xx_cooling_device *cdev;

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
	FUNC6(cdev->name, THERMAL_NAME_LENGTH, "%pOFn%d", child,
		 pwm_port);

	cdev->tcdev = FUNC4(dev, child,
				cdev->name, cdev, &npcm7xx_pwm_cool_ops);
	if (FUNC0(cdev->tcdev))
		return FUNC1(cdev->tcdev);

	cdev->data = data;
	cdev->pwm_port = pwm_port;

	data->cdev[pwm_port] = cdev;

	return 0;
}