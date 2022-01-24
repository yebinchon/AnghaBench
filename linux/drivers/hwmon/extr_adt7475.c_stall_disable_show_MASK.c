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
typedef  int u8 ;
struct sensor_device_attribute_2 {scalar_t__ index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* enh_acoustics; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct adt7475_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *sattr = FUNC3(attr);
	struct adt7475_data *data = FUNC1(dev);

	u8 mask = FUNC0(5 + sattr->index);

	return FUNC2(buf, "%d\n", !!(data->enh_acoustics[0] & mask));
}