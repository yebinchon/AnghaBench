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
struct nct6683_data {size_t* temp_src; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char** nct6683_mon_label ; 
 struct nct6683_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute *sattr = FUNC2(attr);
	struct nct6683_data *data = FUNC0(dev);
	int nr = sattr->index;

	return FUNC1(buf, "%s\n", nct6683_mon_label[data->temp_src[nr]]);
}