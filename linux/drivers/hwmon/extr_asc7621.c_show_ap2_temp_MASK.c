#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int s8 ;
struct TYPE_4__ {int* reg; int /*<<< orphan*/  update_lock; } ;
struct TYPE_3__ {size_t* msb; int* shift; int* mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct device_attribute*) ; 
 long* asc7621_range_map ; 
 size_t FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* param ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			     struct device_attribute *attr, char *buf)
{
	FUNC0(dev, attr);
	long auto_point1;
	u8 regval;
	int temp;

	FUNC2(&data->update_lock);
	auto_point1 = ((s8) data->reg[param->msb[1]]) * 1000;
	regval =
	    ((data->reg[param->msb[0]] >> param->shift[0]) & param->mask[0]);
	temp = auto_point1 + asc7621_range_map[FUNC1(regval, 0, 15)];
	FUNC3(&data->update_lock);

	return FUNC4(buf, "%d\n", temp);

}