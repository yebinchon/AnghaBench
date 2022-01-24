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
typedef  int /*<<< orphan*/  umode_t ;
struct device {int /*<<< orphan*/  kobj; } ;
struct attribute {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct attribute*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev,
			       struct attribute *attr, umode_t mode)
{
	if (FUNC1(&dev->kobj, attr, mode)) {
		FUNC0(dev, "Failed to change permissions of %s.\n",
			 attr->name);
	}
}