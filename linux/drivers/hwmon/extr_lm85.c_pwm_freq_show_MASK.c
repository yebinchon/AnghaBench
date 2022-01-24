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
struct lm85_data {int /*<<< orphan*/ * pwm_freq; int /*<<< orphan*/  freq_map_size; int /*<<< orphan*/  freq_map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct lm85_data*) ; 
 struct lm85_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			     struct device_attribute *attr, char *buf)
{
	int nr = FUNC4(attr)->index;
	struct lm85_data *data = FUNC2(dev);
	int freq;

	if (FUNC1(data))
		freq = 22500;
	else
		freq = FUNC0(data->freq_map, data->freq_map_size,
				     data->pwm_freq[nr]);

	return FUNC3(buf, "%d\n", freq);
}