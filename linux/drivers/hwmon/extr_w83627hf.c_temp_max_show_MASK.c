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
typedef  int /*<<< orphan*/  u16 ;
struct w83627hf_data {int /*<<< orphan*/ * temp_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,long) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 
 struct w83627hf_data* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *devattr, char *buf)
{
	int nr = FUNC3(devattr)->index;
	struct w83627hf_data *data = FUNC4(dev);

	u16 tmp = data->temp_max[nr];
	return FUNC2(buf, "%ld\n", (nr) ? (long) FUNC0(tmp)
					  : (long) FUNC1(tmp));
}