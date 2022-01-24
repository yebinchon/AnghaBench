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
struct ads7846 {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC1 (struct ads7846*) ; 
 struct ads7846* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct ads7846 *ts = FUNC2(dev);
	unsigned int i;
	int err;

	err = FUNC3(buf, 10, &i);
	if (err)
		return err;

	if (i)
		FUNC0(ts);
	else
		FUNC1(ts);

	return count;
}