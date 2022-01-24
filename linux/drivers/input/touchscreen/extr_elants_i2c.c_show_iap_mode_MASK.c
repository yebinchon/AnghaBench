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
struct elants_data {scalar_t__ iap_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ ELAN_IAP_OPERATIONAL ; 
 struct elants_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			     struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC2(dev);
	struct elants_data *ts = FUNC0(client);

	return FUNC1(buf, "%s\n",
		       ts->iap_mode == ELAN_IAP_OPERATIONAL ?
				"Normal" : "Recovery");
}