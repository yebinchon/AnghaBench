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
struct etm_config {unsigned long timestamp_event; } ;
struct etm_drvdata {struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long ETM_EVENT_MASK ; 
 struct etm_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t size)
{
	int ret;
	unsigned long val;
	struct etm_drvdata *drvdata = FUNC0(dev->parent);
	struct etm_config *config = &drvdata->config;

	ret = FUNC1(buf, 16, &val);
	if (ret)
		return ret;

	config->timestamp_event = val & ETM_EVENT_MASK;
	return size;
}