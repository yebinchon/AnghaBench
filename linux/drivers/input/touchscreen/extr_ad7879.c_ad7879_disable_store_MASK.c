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
struct ad7879 {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad7879*,unsigned int) ; 
 struct ad7879* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct ad7879 *ts = FUNC1(dev);
	unsigned int val;
	int error;

	error = FUNC2(buf, 10, &val);
	if (error)
		return error;

	FUNC0(ts, val);

	return count;
}