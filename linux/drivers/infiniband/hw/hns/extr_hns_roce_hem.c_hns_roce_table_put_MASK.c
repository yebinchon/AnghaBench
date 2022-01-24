#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hns_roce_hem_table {int num_obj; unsigned long table_chunk_size; unsigned long obj_size; int /*<<< orphan*/  mutex; TYPE_2__** hem; int /*<<< orphan*/  type; } ;
struct hns_roce_dev {TYPE_1__* hw; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ refcount; } ;
struct TYPE_3__ {scalar_t__ (* clear_hem ) (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int /*<<< orphan*/ ) ; 

void FUNC7(struct hns_roce_dev *hr_dev,
			struct hns_roce_hem_table *table, unsigned long obj)
{
	struct device *dev = hr_dev->dev;
	unsigned long i;

	if (FUNC1(hr_dev, table->type)) {
		FUNC3(hr_dev, table, obj, 1);
		return;
	}

	i = (obj & (table->num_obj - 1)) /
	    (table->table_chunk_size / table->obj_size);

	FUNC4(&table->mutex);

	if (--table->hem[i]->refcount == 0) {
		/* Clear HEM base address */
		if (hr_dev->hw->clear_hem(hr_dev, table, obj, 0))
			FUNC0(dev, "Clear HEM base address failed.\n");

		FUNC2(hr_dev, table->hem[i]);
		table->hem[i] = NULL;
	}

	FUNC5(&table->mutex);
}