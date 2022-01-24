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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_hwmon_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TEMP_NEGATIVE_BIT ; 
 struct xgene_hwmon_dev* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct xgene_hwmon_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr,
				char *buf)
{
	struct xgene_hwmon_dev *ctx = FUNC1(dev);
	int rc, temp;
	u32 val;

	rc = FUNC4(ctx, &val);
	if (rc < 0)
		return rc;

	temp = FUNC2(val, TEMP_NEGATIVE_BIT);

	return FUNC3(buf, PAGE_SIZE, "%d\n", FUNC0(temp));
}