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
typedef  size_t u64 ;
typedef  int u32 ;
struct hns_roce_hem_table {scalar_t__ type; size_t* bt_l0_dma_addr; size_t* bt_l1_dma_addr; struct hns_roce_hem** hem; } ;
struct hns_roce_hem_mhop {int l0_idx; int l1_idx; int l2_idx; int hop_num; int bt_chunk_size; } ;
struct hns_roce_hem_iter {int dummy; } ;
struct hns_roce_hem {int dummy; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HEM_TYPE_SCCC ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_TIMEOUT_MSECS ; 
 int HNS_ROCE_HOP_NUM_0 ; 
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (struct hns_roce_dev*,scalar_t__,int) ; 
 struct hns_roce_cmd_mailbox* FUNC4 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,struct hns_roce_hem_table*,unsigned long*,struct hns_roce_hem_mhop*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,scalar_t__) ; 
 int FUNC7 (struct hns_roce_dev*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 size_t FUNC9 (struct hns_roce_hem_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct hns_roce_hem*,struct hns_roce_hem_iter*) ; 
 int /*<<< orphan*/  FUNC11 (struct hns_roce_hem_iter*) ; 
 int /*<<< orphan*/  FUNC12 (struct hns_roce_hem_iter*) ; 

__attribute__((used)) static int FUNC13(struct hns_roce_dev *hr_dev,
			       struct hns_roce_hem_table *table, int obj,
			       int step_idx)
{
	struct hns_roce_cmd_mailbox *mailbox;
	struct hns_roce_hem_iter iter;
	struct hns_roce_hem_mhop mhop;
	struct hns_roce_hem *hem;
	unsigned long mhop_obj = obj;
	int i, j, k;
	int ret = 0;
	u64 hem_idx = 0;
	u64 l1_idx = 0;
	u64 bt_ba = 0;
	u32 chunk_ba_num;
	u32 hop_num;
	int op;

	if (!FUNC6(hr_dev, table->type))
		return 0;

	FUNC5(hr_dev, table, &mhop_obj, &mhop);
	i = mhop.l0_idx;
	j = mhop.l1_idx;
	k = mhop.l2_idx;
	hop_num = mhop.hop_num;
	chunk_ba_num = mhop.bt_chunk_size / 8;

	if (hop_num == 2) {
		hem_idx = i * chunk_ba_num * chunk_ba_num + j * chunk_ba_num +
			  k;
		l1_idx = i * chunk_ba_num + j;
	} else if (hop_num == 1) {
		hem_idx = i * chunk_ba_num + j;
	} else if (hop_num == HNS_ROCE_HOP_NUM_0) {
		hem_idx = i;
	}

	op = FUNC3(hr_dev, table->type, step_idx);
	if (op == -EINVAL)
		return 0;

	mailbox = FUNC4(hr_dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	if (table->type == HEM_TYPE_SCCC)
		obj = mhop.l0_idx;

	if (FUNC2(hop_num, step_idx)) {
		hem = table->hem[hem_idx];
		for (FUNC10(hem, &iter);
		     !FUNC11(&iter); FUNC12(&iter)) {
			bt_ba = FUNC9(&iter);

			/* configure the ba, tag, and op */
			ret = FUNC7(hr_dev, bt_ba, mailbox->dma,
						obj, 0, op,
						HNS_ROCE_CMD_TIMEOUT_MSECS);
		}
	} else {
		if (step_idx == 0)
			bt_ba = table->bt_l0_dma_addr[i];
		else if (step_idx == 1 && hop_num == 2)
			bt_ba = table->bt_l1_dma_addr[l1_idx];

		/* configure the ba, tag, and op */
		ret = FUNC7(hr_dev, bt_ba, mailbox->dma, obj,
					0, op, HNS_ROCE_CMD_TIMEOUT_MSECS);
	}

	FUNC8(hr_dev, mailbox);
	return ret;
}