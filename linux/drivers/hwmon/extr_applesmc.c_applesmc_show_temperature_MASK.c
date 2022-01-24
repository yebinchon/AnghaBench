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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s16 ;
struct TYPE_2__ {char** index; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (char const*,int*) ; 
 TYPE_1__ smcreg ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			struct device_attribute *devattr, char *sysfsbuf)
{
	const char *key = smcreg.index[FUNC2(devattr)];
	int ret;
	s16 value;
	int temp;

	ret = FUNC0(key, &value);
	if (ret)
		return ret;

	temp = 250 * (value >> 6);

	return FUNC1(sysfsbuf, PAGE_SIZE, "%d\n", temp);
}