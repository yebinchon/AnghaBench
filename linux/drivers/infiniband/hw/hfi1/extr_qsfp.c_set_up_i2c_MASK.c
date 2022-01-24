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
struct hfi1_devdata {int dummy; } ;
struct hfi1_asic_data {void* i2c_bus1; void* i2c_bus0; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (struct hfi1_devdata*,struct hfi1_asic_data*,int) ; 

int FUNC1(struct hfi1_devdata *dd, struct hfi1_asic_data *ad)
{
	ad->i2c_bus0 = FUNC0(dd, ad, 0);
	ad->i2c_bus1 = FUNC0(dd, ad, 1);
	if (!ad->i2c_bus0 || !ad->i2c_bus1)
		return -ENOMEM;
	return 0;
}