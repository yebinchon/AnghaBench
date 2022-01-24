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
struct lm80_data {int /*<<< orphan*/ * fan_div; int /*<<< orphan*/ ** fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct lm80_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct lm80_data*) ; 
 struct lm80_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	int index = FUNC6(attr)->index;
	int nr = FUNC6(attr)->nr;
	struct lm80_data *data = FUNC4(dev);
	if (FUNC2(data))
		return FUNC3(data);
	return FUNC5(buf, "%d\n", FUNC1(data->fan[nr][index],
		       FUNC0(data->fan_div[index])));
}