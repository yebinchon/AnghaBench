#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zopt2201_data {int dummy; } ;
struct TYPE_3__ {int scale; int uscale; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* zopt2201_scale_uvb ; 
 int FUNC1 (struct zopt2201_data*,int) ; 

__attribute__((used)) static int FUNC2(struct zopt2201_data *data,
				     int val, int val2)
{
	int i;

	for (i = 0; i < FUNC0(zopt2201_scale_uvb); i++)
		if (val == zopt2201_scale_uvb[i].scale &&
		    val2 == zopt2201_scale_uvb[i].uscale)
			return FUNC1(data, i);

	return -EINVAL;
}