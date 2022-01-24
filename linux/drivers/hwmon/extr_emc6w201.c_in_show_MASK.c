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
struct emc6w201_data {scalar_t__** in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 struct emc6w201_data* FUNC0 (struct device*) ; 
 unsigned int* nominal_mv ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *devattr,
		       char *buf)
{
	struct emc6w201_data *data = FUNC0(dev);
	int sf = FUNC2(devattr)->index;
	int nr = FUNC2(devattr)->nr;

	return FUNC1(buf, "%u\n",
		       (unsigned)data->in[sf][nr] * nominal_mv[nr] / 0xC0);
}