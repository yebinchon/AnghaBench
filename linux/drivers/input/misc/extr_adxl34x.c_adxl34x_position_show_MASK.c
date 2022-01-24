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
struct TYPE_2__ {int x; int y; int z; } ;
struct adxl34x {int /*<<< orphan*/  mutex; TYPE_1__ saved; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct adxl34x* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct adxl34x *ac = FUNC0(dev);
	ssize_t count;

	FUNC1(&ac->mutex);
	count = FUNC3(buf, "(%d, %d, %d)\n",
			ac->saved.x, ac->saved.y, ac->saved.z);
	FUNC2(&ac->mutex);

	return count;
}