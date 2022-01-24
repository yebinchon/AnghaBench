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
typedef  size_t ssize_t ;
struct TYPE_4__ {int* reg; int /*<<< orphan*/  update_lock; } ;
struct TYPE_3__ {size_t* msb; int* mask; int* shift; } ;

/* Variables and functions */
 int FUNC0 (long*) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct device_attribute*) ; 
 long* asc7621_range_map ; 
 long FUNC2 (long,long,long) ; 
 int /*<<< orphan*/  client ; 
 TYPE_2__* data ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* param ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	FUNC1(dev, attr);
	long reqval, auto_point1;
	int i;
	u8 currval, newval = 0;

	if (FUNC3(buf, 10, &reqval))
		return -EINVAL;

	FUNC4(&data->update_lock);
	auto_point1 = data->reg[param->msb[1]] * 1000;
	reqval = FUNC2(reqval, auto_point1 + 2000, auto_point1 + 80000);

	for (i = FUNC0(asc7621_range_map) - 1; i >= 0; i--) {
		if (reqval >= auto_point1 + asc7621_range_map[i]) {
			newval = i;
			break;
		}
	}

	newval = (newval & param->mask[0]) << param->shift[0];
	currval = FUNC6(client, param->msb[0]);
	newval |= (currval & ~(param->mask[0] << param->shift[0]));
	data->reg[param->msb[0]] = newval;
	FUNC7(client, param->msb[0], newval);
	FUNC5(&data->update_lock);
	return count;
}