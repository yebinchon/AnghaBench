#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
typedef  int u32 ;
struct hns_roce_hem_table {scalar_t__ type; int /*<<< orphan*/  mutex; int /*<<< orphan*/ ** bt_l0; int /*<<< orphan*/ * bt_l0_dma_addr; int /*<<< orphan*/ ** bt_l1; int /*<<< orphan*/ * bt_l1_dma_addr; int /*<<< orphan*/  num_hem; TYPE_2__** hem; } ;
struct hns_roce_hem_mhop {int bt_chunk_size; int hop_num; int l0_idx; int l1_idx; int /*<<< orphan*/  l2_idx; } ;
struct hns_roce_dev {TYPE_1__* hw; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ refcount; } ;
struct TYPE_4__ {scalar_t__ (* clear_hem ) (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ;} ;

/* Variables and functions */
 int BA_BYTE_LEN ; 
 scalar_t__ HEM_TYPE_MTT ; 
 int HNS_ROCE_HOP_NUM_0 ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long*,struct hns_roce_hem_mhop*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int,int) ; 
 scalar_t__ FUNC7 (TYPE_2__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hns_roce_dev*,TYPE_2__*) ; 
 int FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ; 
 scalar_t__ FUNC13 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ; 
 scalar_t__ FUNC14 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ; 
 scalar_t__ FUNC15 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ; 
 scalar_t__ FUNC16 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ; 
 scalar_t__ FUNC17 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long,int) ; 

__attribute__((used)) static void FUNC18(struct hns_roce_dev *hr_dev,
				    struct hns_roce_hem_table *table,
				    unsigned long obj,
				    int check_refcount)
{
	struct device *dev = hr_dev->dev;
	struct hns_roce_hem_mhop mhop;
	unsigned long mhop_obj = obj;
	u32 bt_chunk_size;
	u32 chunk_ba_num;
	u32 hop_num;
	u32 start_idx;
	u32 bt_num;
	u64 hem_idx;
	u64 bt_l1_idx = 0;
	int ret;

	ret = FUNC5(hr_dev, table, &mhop_obj, &mhop);
	if (ret)
		return;

	bt_chunk_size = mhop.bt_chunk_size;
	hop_num = mhop.hop_num;
	chunk_ba_num = bt_chunk_size / BA_BYTE_LEN;

	bt_num = FUNC9(table->type, hop_num);
	switch (bt_num) {
	case 3:
		hem_idx = mhop.l0_idx * chunk_ba_num * chunk_ba_num +
			  mhop.l1_idx * chunk_ba_num + mhop.l2_idx;
		bt_l1_idx = mhop.l0_idx * chunk_ba_num + mhop.l1_idx;
		break;
	case 2:
		hem_idx = mhop.l0_idx * chunk_ba_num + mhop.l1_idx;
		break;
	case 1:
		hem_idx = mhop.l0_idx;
		break;
	default:
		FUNC2(dev, "Table %d not support hop_num = %d!\n",
			     table->type, hop_num);
		return;
	}

	FUNC10(&table->mutex);

	if (check_refcount && (--table->hem[hem_idx]->refcount > 0)) {
		FUNC11(&table->mutex);
		return;
	}

	if (table->type < HEM_TYPE_MTT && hop_num == 1) {
		if (hr_dev->hw->clear_hem(hr_dev, table, obj, 1))
			FUNC3(dev, "Clear HEM base address failed.\n");
	} else if (table->type < HEM_TYPE_MTT && hop_num == 2) {
		if (hr_dev->hw->clear_hem(hr_dev, table, obj, 2))
			FUNC3(dev, "Clear HEM base address failed.\n");
	} else if (table->type < HEM_TYPE_MTT &&
		   hop_num == HNS_ROCE_HOP_NUM_0) {
		if (hr_dev->hw->clear_hem(hr_dev, table, obj, 0))
			FUNC3(dev, "Clear HEM base address failed.\n");
	}

	/*
	 * free buffer space chunk for QPC/MTPT/CQC/SRQC/SCCC.
	 * free bt space chunk for MTT/CQE.
	 */
	FUNC8(hr_dev, table->hem[hem_idx]);
	table->hem[hem_idx] = NULL;

	if (FUNC0(table->type, hop_num)) {
		start_idx = mhop.l0_idx * chunk_ba_num;
		if (FUNC7(table->hem, start_idx,
					    chunk_ba_num, table->num_hem)) {
			if (table->type < HEM_TYPE_MTT &&
			    hr_dev->hw->clear_hem(hr_dev, table, obj, 0))
				FUNC3(dev, "Clear HEM base address failed.\n");

			FUNC4(dev, bt_chunk_size,
					  table->bt_l0[mhop.l0_idx],
					  table->bt_l0_dma_addr[mhop.l0_idx]);
			table->bt_l0[mhop.l0_idx] = NULL;
		}
	} else if (FUNC1(table->type, hop_num)) {
		start_idx = mhop.l0_idx * chunk_ba_num * chunk_ba_num +
			    mhop.l1_idx * chunk_ba_num;
		if (FUNC7(table->hem, start_idx,
					    chunk_ba_num, table->num_hem)) {
			if (hr_dev->hw->clear_hem(hr_dev, table, obj, 1))
				FUNC3(dev, "Clear HEM base address failed.\n");

			FUNC4(dev, bt_chunk_size,
					  table->bt_l1[bt_l1_idx],
					  table->bt_l1_dma_addr[bt_l1_idx]);
			table->bt_l1[bt_l1_idx] = NULL;

			start_idx = mhop.l0_idx * chunk_ba_num;
			if (FUNC6(table->bt_l1, start_idx,
						   chunk_ba_num)) {
				if (hr_dev->hw->clear_hem(hr_dev, table, obj,
							  0))
					FUNC3(dev, "Clear HEM base address failed.\n");

				FUNC4(dev, bt_chunk_size,
					    table->bt_l0[mhop.l0_idx],
					    table->bt_l0_dma_addr[mhop.l0_idx]);
				table->bt_l0[mhop.l0_idx] = NULL;
			}
		}
	}

	FUNC11(&table->mutex);
}