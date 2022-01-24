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
typedef  long u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {long* reg; int /*<<< orphan*/  update_lock; } ;
struct TYPE_3__ {long* mask; long* shift; size_t* msb; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct device_attribute*) ; 
 long FUNC1 (long,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  client ; 
 TYPE_2__* data ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* param ; 
 long FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,long) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t count)
{
	FUNC0(dev, attr);
	long reqval;
	u8 currval;

	if (FUNC2(buf, 10, &reqval))
		return -EINVAL;

	reqval = FUNC1(reqval, 0, param->mask[0]);

	reqval = (reqval & param->mask[0]) << param->shift[0];

	FUNC3(&data->update_lock);
	currval = FUNC5(client, param->msb[0]);
	reqval |= (currval & ~(param->mask[0] << param->shift[0]));
	data->reg[param->msb[0]] = reqval;
	FUNC6(client, param->msb[0], reqval);
	FUNC4(&data->update_lock);
	return count;
}