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
struct device_attribute {int /*<<< orphan*/  attr; } ;
struct pmbus_label {int /*<<< orphan*/  name; int /*<<< orphan*/  label; struct device_attribute attribute; } ;
struct pmbus_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pmbus_label* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pmbus_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_attribute*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmbus_show_label ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC5(struct pmbus_data *data,
			   const char *name, int seq,
			   const char *lstring, int index)
{
	struct pmbus_label *label;
	struct device_attribute *a;

	label = FUNC0(data->dev, sizeof(*label), GFP_KERNEL);
	if (!label)
		return -ENOMEM;

	a = &label->attribute;

	FUNC3(label->name, sizeof(label->name), "%s%d_label", name, seq);
	if (!index)
		FUNC4(label->label, lstring, sizeof(label->label) - 1);
	else
		FUNC3(label->label, sizeof(label->label), "%s%d", lstring,
			 index);

	FUNC2(a, label->name, 0444, pmbus_show_label, NULL);
	return FUNC1(data, &a->attr);
}