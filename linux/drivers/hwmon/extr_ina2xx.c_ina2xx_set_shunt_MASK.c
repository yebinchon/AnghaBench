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
struct ina2xx_data {long rshunt; int current_lsb_uA; int power_lsb_uW; int /*<<< orphan*/  config_lock; TYPE_1__* config; } ;
struct TYPE_2__ {long shunt_div; int power_lsb_factor; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int,long) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ina2xx_data *data, long val)
{
	unsigned int dividend = FUNC0(1000000000,
						  data->config->shunt_div);
	if (val <= 0 || val > dividend)
		return -EINVAL;

	FUNC1(&data->config_lock);
	data->rshunt = val;
	data->current_lsb_uA = FUNC0(dividend, val);
	data->power_lsb_uW = data->config->power_lsb_factor *
			     data->current_lsb_uA;
	FUNC2(&data->config_lock);

	return 0;
}