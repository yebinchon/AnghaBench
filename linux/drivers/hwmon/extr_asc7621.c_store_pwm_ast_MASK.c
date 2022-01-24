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
typedef  size_t u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int* reg; int /*<<< orphan*/  update_lock; } ;
struct TYPE_3__ {int* mask; int* shift; size_t* msb; } ;

/* Variables and functions */
 size_t FUNC0 (long*) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct device_attribute*) ; 
 long* asc7621_pwm_auto_spinup_map ; 
 int /*<<< orphan*/  client ; 
 TYPE_2__* data ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* param ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t count)
{
	FUNC1(dev, attr);
	long reqval;
	u8 currval, newval = 255;
	u32 i;

	if (FUNC2(buf, 10, &reqval))
		return -EINVAL;

	for (i = 0; i < FUNC0(asc7621_pwm_auto_spinup_map); i++) {
		if (reqval == asc7621_pwm_auto_spinup_map[i]) {
			newval = i;
			break;
		}
	}
	if (newval == 255)
		return -EINVAL;

	newval = (newval & param->mask[0]) << param->shift[0];

	FUNC3(&data->update_lock);
	currval = FUNC5(client, param->msb[0]);
	newval |= (currval & ~(param->mask[0] << param->shift[0]));
	data->reg[param->msb[0]] = newval;
	FUNC6(client, param->msb[0], newval);
	FUNC4(&data->update_lock);
	return count;
}