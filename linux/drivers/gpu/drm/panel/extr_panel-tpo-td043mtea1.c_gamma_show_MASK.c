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
struct td043mtea1_panel {int* gamma; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 scalar_t__ PAGE_SIZE ; 
 struct td043mtea1_panel* FUNC1 (struct device*) ; 
 int FUNC2 (char*,scalar_t__,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	struct td043mtea1_panel *lcd = FUNC1(dev);
	ssize_t len = 0;
	unsigned int i;
	int ret;

	for (i = 0; i < FUNC0(lcd->gamma); i++) {
		ret = FUNC2(buf + len, PAGE_SIZE - len, "%u ",
			       lcd->gamma[i]);
		if (ret < 0)
			return ret;
		len += ret;
	}
	buf[len - 1] = '\n';

	return len;
}