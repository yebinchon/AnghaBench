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
struct sht21 {int /*<<< orphan*/  lock; int /*<<< orphan*/ * eic; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct sht21* FUNC0 (struct device*) ; 
 int FUNC1 (struct sht21*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *attr,
	char *buf)
{
	struct sht21 *sht21 = FUNC0(dev);
	int ret;

	ret = sizeof(sht21->eic) - 1;
	FUNC3(&sht21->lock);
	if (!sht21->eic[0])
		ret = FUNC1(sht21);
	if (ret > 0)
		FUNC2(buf, sht21->eic, ret);
	FUNC4(&sht21->lock);
	return ret;
}