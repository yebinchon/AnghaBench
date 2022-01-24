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
struct dax_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dax_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dax_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dax_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct dax_device *dax_dev = FUNC1(FUNC3(dev));
	ssize_t rc;

	FUNC0(!dax_dev);
	if (!dax_dev)
		return -ENXIO;

	rc = FUNC5(buf, "%d\n", !!FUNC2(dax_dev));
	FUNC4(dax_dev);
	return rc;
}