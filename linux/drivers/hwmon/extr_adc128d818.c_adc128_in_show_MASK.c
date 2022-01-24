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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adc128_data {int** in; int vref; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct adc128_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct adc128_data*) ; 
 struct adc128_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct adc128_data *data = FUNC3(dev);
	int index = FUNC5(attr)->index;
	int nr = FUNC5(attr)->nr;
	int val;

	if (FUNC1(data))
		return FUNC2(data);

	val = FUNC0(data->in[index][nr] * data->vref, 4095);
	return FUNC4(buf, "%d\n", val);
}