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
struct adm1026_data {int* fan_div; int* fan_min; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int,int) ; 
 struct adm1026_data* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, int fan, int old_div)
{
	struct adm1026_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	int new_min;
	int new_div = data->fan_div[fan];

	/* 0 and 0xff are special.  Don't adjust them */
	if (data->fan_min[fan] == 0 || data->fan_min[fan] == 0xff)
		return;

	new_min = data->fan_min[fan] * old_div / new_div;
	new_min = FUNC2(new_min, 1, 254);
	data->fan_min[fan] = new_min;
	FUNC1(client, FUNC0(fan), new_min);
}