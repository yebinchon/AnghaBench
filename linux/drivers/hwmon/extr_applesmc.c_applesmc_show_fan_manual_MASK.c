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
typedef  int u16 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FANS_MANUAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			struct device_attribute *attr, char *sysfsbuf)
{
	int ret;
	u16 manual = 0;
	u8 buffer[2];

	ret = FUNC0(FANS_MANUAL, buffer, 2);
	manual = ((buffer[0] << 8 | buffer[1]) >> FUNC2(attr)) & 0x01;

	if (ret)
		return ret;
	else
		return FUNC1(sysfsbuf, PAGE_SIZE, "%d\n", manual);
}