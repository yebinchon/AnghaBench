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
typedef  int uint32_t ;
struct mxs_i2c_dev {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxs_i2c_dev*,int) ; 
 int FUNC2 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC3(struct mxs_i2c_dev *i2c)
{
	uint32_t speed;
	struct device *dev = i2c->dev;
	struct device_node *node = dev->of_node;
	int ret;

	ret = FUNC2(node, "clock-frequency", &speed);
	if (ret) {
		FUNC0(dev, "No I2C speed selected, using 100kHz\n");
		speed = 100000;
	}

	FUNC1(i2c, speed);

	return 0;
}