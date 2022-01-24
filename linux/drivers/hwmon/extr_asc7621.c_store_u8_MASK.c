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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {long* reg; int /*<<< orphan*/  update_lock; } ;
struct TYPE_3__ {size_t* msb; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct device_attribute*) ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  client ; 
 TYPE_2__* data ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* param ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,long) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	FUNC0(dev, attr);
	long reqval;

	if (FUNC2(buf, 10, &reqval))
		return -EINVAL;

	reqval = FUNC1(reqval, 0, 255);

	FUNC3(&data->update_lock);
	data->reg[param->msb[0]] = reqval;
	FUNC5(client, param->msb[0], reqval);
	FUNC4(&data->update_lock);
	return count;
}