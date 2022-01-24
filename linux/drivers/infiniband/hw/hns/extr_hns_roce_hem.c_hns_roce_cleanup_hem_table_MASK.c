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
struct hns_roce_hem_table {unsigned long num_hem; unsigned long table_chunk_size; unsigned long obj_size; scalar_t__* hem; int /*<<< orphan*/  type; } ;
struct hns_roce_dev {TYPE_1__* hw; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* clear_hem ) (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,struct hns_roce_hem_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int /*<<< orphan*/ ) ; 

void FUNC6(struct hns_roce_dev *hr_dev,
				struct hns_roce_hem_table *table)
{
	struct device *dev = hr_dev->dev;
	unsigned long i;

	if (FUNC1(hr_dev, table->type)) {
		FUNC2(hr_dev, table);
		return;
	}

	for (i = 0; i < table->num_hem; ++i)
		if (table->hem[i]) {
			if (hr_dev->hw->clear_hem(hr_dev, table,
			    i * table->table_chunk_size / table->obj_size, 0))
				FUNC0(dev, "Clear HEM base address failed.\n");

			FUNC3(hr_dev, table->hem[i]);
		}

	FUNC4(table->hem);
}