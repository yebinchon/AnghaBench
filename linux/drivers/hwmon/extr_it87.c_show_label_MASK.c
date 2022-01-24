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
struct it87_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct it87_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct it87_data*) ; 
 scalar_t__ FUNC2 (struct it87_data*) ; 
 scalar_t__ FUNC3 (struct it87_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	static const char * const labels[] = {
		"+5V",
		"5VSB",
		"Vbat",
		"AVCC",
	};
	static const char * const labels_it8721[] = {
		"+3.3V",
		"3VSB",
		"Vbat",
		"+3.3V",
	};
	struct it87_data *data = FUNC0(dev);
	int nr = FUNC5(attr)->index;
	const char *label;

	if (FUNC3(data) && nr == 0)
		label = labels[0];
	else if (FUNC2(data) || FUNC1(data))
		label = labels_it8721[nr];
	else
		label = labels[nr];

	return FUNC4(buf, "%s\n", label);
}