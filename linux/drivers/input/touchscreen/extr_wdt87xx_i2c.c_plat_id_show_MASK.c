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
struct TYPE_2__ {int /*<<< orphan*/  plat_id; } ;
struct wdt87xx_data {TYPE_1__ param; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct wdt87xx_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			    struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC2(dev);
	struct wdt87xx_data *wdt = FUNC0(client);

	return FUNC1(buf, PAGE_SIZE, "%x\n", wdt->param.plat_id);
}