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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  newkey ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/ * fan_speed_fmt ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_attribute*) ; 
 size_t FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *sysfsbuf)
{
	int ret;
	unsigned int speed = 0;
	char newkey[5];
	u8 buffer[2];

	FUNC1(newkey, sizeof(newkey), fan_speed_fmt[FUNC4(attr)],
		  FUNC3(attr));

	ret = FUNC0(newkey, buffer, 2);
	speed = ((buffer[0] << 8 | buffer[1]) >> 2);

	if (ret)
		return ret;
	else
		return FUNC2(sysfsbuf, PAGE_SIZE, "%u\n", speed);
}