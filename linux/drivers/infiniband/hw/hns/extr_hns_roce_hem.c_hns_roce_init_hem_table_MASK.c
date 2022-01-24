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
typedef  scalar_t__ u32 ;
struct hns_roce_hem_table {unsigned long table_chunk_size; unsigned long num_hem; unsigned long num_obj; unsigned long obj_size; int lowmem; int /*<<< orphan*/ * hem; int /*<<< orphan*/ * bt_l1; int /*<<< orphan*/ * bt_l1_dma_addr; int /*<<< orphan*/ * bt_l0; int /*<<< orphan*/  mutex; scalar_t__ type; void* bt_l0_dma_addr; } ;
struct hns_roce_hem_mhop {unsigned long buf_chunk_size; unsigned long bt_chunk_size; unsigned long ba_l0_num; scalar_t__ hop_num; } ;
struct TYPE_2__ {unsigned long chunk_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 unsigned long BA_BYTE_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HEM_TYPE_MTT ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct hns_roce_dev*,struct hns_roce_hem_mhop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,scalar_t__) ; 
 void* FUNC4 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct hns_roce_dev *hr_dev,
			    struct hns_roce_hem_table *table, u32 type,
			    unsigned long obj_size, unsigned long nobj,
			    int use_lowmem)
{
	unsigned long obj_per_chunk;
	unsigned long num_hem;

	if (!FUNC3(hr_dev, type)) {
		table->table_chunk_size = hr_dev->caps.chunk_sz;
		obj_per_chunk = table->table_chunk_size / obj_size;
		num_hem = (nobj + obj_per_chunk - 1) / obj_per_chunk;

		table->hem = FUNC4(num_hem, sizeof(*table->hem), GFP_KERNEL);
		if (!table->hem)
			return -ENOMEM;
	} else {
		struct hns_roce_hem_mhop mhop = {};
		unsigned long buf_chunk_size;
		unsigned long bt_chunk_size;
		unsigned long bt_chunk_num;
		unsigned long num_bt_l0 = 0;
		u32 hop_num;

		if (FUNC2(hr_dev, &mhop, type))
			return -EINVAL;

		buf_chunk_size = mhop.buf_chunk_size;
		bt_chunk_size = mhop.bt_chunk_size;
		num_bt_l0 = mhop.ba_l0_num;
		hop_num = mhop.hop_num;

		obj_per_chunk = buf_chunk_size / obj_size;
		num_hem = (nobj + obj_per_chunk - 1) / obj_per_chunk;
		bt_chunk_num = bt_chunk_size / BA_BYTE_LEN;
		if (type >= HEM_TYPE_MTT)
			num_bt_l0 = bt_chunk_num;

		table->hem = FUNC4(num_hem, sizeof(*table->hem),
					 GFP_KERNEL);
		if (!table->hem)
			goto err_kcalloc_hem_buf;

		if (FUNC1(type, hop_num)) {
			unsigned long num_bt_l1;

			num_bt_l1 = (num_hem + bt_chunk_num - 1) /
					     bt_chunk_num;
			table->bt_l1 = FUNC4(num_bt_l1,
					       sizeof(*table->bt_l1),
					       GFP_KERNEL);
			if (!table->bt_l1)
				goto err_kcalloc_bt_l1;

			table->bt_l1_dma_addr = FUNC4(num_bt_l1,
						 sizeof(*table->bt_l1_dma_addr),
						 GFP_KERNEL);

			if (!table->bt_l1_dma_addr)
				goto err_kcalloc_l1_dma;
		}

		if (FUNC0(type, hop_num) ||
			FUNC1(type, hop_num)) {
			table->bt_l0 = FUNC4(num_bt_l0, sizeof(*table->bt_l0),
					       GFP_KERNEL);
			if (!table->bt_l0)
				goto err_kcalloc_bt_l0;

			table->bt_l0_dma_addr = FUNC4(num_bt_l0,
						 sizeof(*table->bt_l0_dma_addr),
						 GFP_KERNEL);
			if (!table->bt_l0_dma_addr)
				goto err_kcalloc_l0_dma;
		}
	}

	table->type = type;
	table->num_hem = num_hem;
	table->num_obj = nobj;
	table->obj_size = obj_size;
	table->lowmem = use_lowmem;
	FUNC6(&table->mutex);

	return 0;

err_kcalloc_l0_dma:
	FUNC5(table->bt_l0);
	table->bt_l0 = NULL;

err_kcalloc_bt_l0:
	FUNC5(table->bt_l1_dma_addr);
	table->bt_l1_dma_addr = NULL;

err_kcalloc_l1_dma:
	FUNC5(table->bt_l1);
	table->bt_l1 = NULL;

err_kcalloc_bt_l1:
	FUNC5(table->hem);
	table->hem = NULL;

err_kcalloc_hem_buf:
	return -ENOMEM;
}