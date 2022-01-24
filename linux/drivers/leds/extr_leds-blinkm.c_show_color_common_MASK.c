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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct blinkm_data {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLM_GET_CUR_RGB ; 
#define  BLUE 130 
 int EINVAL ; 
#define  GREEN 129 
 int /*<<< orphan*/  PAGE_SIZE ; 
#define  RED 128 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct blinkm_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, char *buf, int color)
{
	struct i2c_client *client;
	struct blinkm_data *data;
	int ret;

	client = FUNC3(dev);
	data = FUNC1(client);

	ret = FUNC0(client, BLM_GET_CUR_RGB);
	if (ret < 0)
		return ret;
	switch (color) {
	case RED:
		return FUNC2(buf, PAGE_SIZE, "%02X\n", data->red);
	case GREEN:
		return FUNC2(buf, PAGE_SIZE, "%02X\n", data->green);
	case BLUE:
		return FUNC2(buf, PAGE_SIZE, "%02X\n", data->blue);
	default:
		return -EINVAL;
	}
	return -EINVAL;
}