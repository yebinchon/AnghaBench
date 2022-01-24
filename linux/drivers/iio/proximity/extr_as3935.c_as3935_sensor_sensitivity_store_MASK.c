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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct as3935_state {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS3935_AFE_GAIN ; 
 unsigned long AS3935_AFE_GAIN_MAX ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct as3935_state*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct as3935_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t len)
{
	struct as3935_state *st = FUNC2(FUNC1(dev));
	unsigned long val;
	int ret;

	ret = FUNC3((const char *) buf, 10, &val);
	if (ret)
		return -EINVAL;

	if (val > AS3935_AFE_GAIN_MAX)
		return -EINVAL;

	FUNC0(st, AS3935_AFE_GAIN, val << 1);

	return len;
}