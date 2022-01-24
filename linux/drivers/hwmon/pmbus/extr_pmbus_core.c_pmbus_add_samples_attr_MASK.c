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
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;
struct pmbus_samples_reg {int page; TYPE_1__ dev_attr; struct pmbus_samples_attr* attr; } ;
struct pmbus_samples_attr {int /*<<< orphan*/  name; } ;
struct pmbus_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pmbus_samples_reg* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pmbus_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmbus_set_samples ; 
 int /*<<< orphan*/  pmbus_show_samples ; 

__attribute__((used)) static int FUNC3(struct pmbus_data *data, int page,
				  struct pmbus_samples_attr *attr)
{
	struct pmbus_samples_reg *reg;

	reg = FUNC0(data->dev, sizeof(*reg), GFP_KERNEL);
	if (!reg)
		return -ENOMEM;

	reg->attr = attr;
	reg->page = page;

	FUNC2(&reg->dev_attr, attr->name, 0644,
			    pmbus_show_samples, pmbus_set_samples);

	return FUNC1(data, &reg->dev_attr.attr);
}