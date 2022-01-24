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
struct dio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct dio_dev*) ; 
 scalar_t__ FUNC2 (struct dio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 struct dio_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct dio_dev *d = FUNC4(dev);

	return FUNC3(buf, "0x%08lx 0x%08lx 0x%08lx\n",
		       (unsigned long)FUNC2(d),
		       (unsigned long)FUNC0(d),
		       FUNC1(d));
}