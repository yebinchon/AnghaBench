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
struct sht3x_data {int humidity; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sht3x_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sht3x_data*) ; 
 struct sht3x_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct sht3x_data *data = FUNC2(dev);

	if (FUNC0(data))
		return FUNC1(data);

	return FUNC3(buf, "%u\n", data->humidity);
}