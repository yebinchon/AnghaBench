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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS3935_AFE_GAIN ; 
 int AS3935_AFE_MASK ; 
 int FUNC0 (struct as3935_state*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct as3935_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct as3935_state *st = FUNC2(FUNC1(dev));
	int val, ret;

	ret = FUNC0(st, AS3935_AFE_GAIN, &val);
	if (ret)
		return ret;
	val = (val & AS3935_AFE_MASK) >> 1;

	return FUNC3(buf, "%d\n", val);
}