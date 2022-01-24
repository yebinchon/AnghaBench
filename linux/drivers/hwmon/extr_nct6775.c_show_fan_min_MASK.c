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
struct sensor_device_attribute {int index; } ;
struct nct6775_data {int (* fan_from_reg_min ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * fan_div; int /*<<< orphan*/ * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct nct6775_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct nct6775_data *data = FUNC0(dev);
	struct sensor_device_attribute *sattr = FUNC4(attr);
	int nr = sattr->index;

	return FUNC1(buf, "%d\n",
		       data->fan_from_reg_min(data->fan_min[nr],
					      data->fan_div[nr]));
}