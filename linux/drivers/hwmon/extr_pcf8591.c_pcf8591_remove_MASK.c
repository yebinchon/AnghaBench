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
struct pcf8591_data {int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcf8591_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  pcf8591_attr_group ; 
 int /*<<< orphan*/  pcf8591_attr_group_opt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct pcf8591_data *data = FUNC1(client);

	FUNC0(data->hwmon_dev);
	FUNC2(&client->dev.kobj, &pcf8591_attr_group_opt);
	FUNC2(&client->dev.kobj, &pcf8591_attr_group);
	return 0;
}