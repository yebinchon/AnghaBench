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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  root_ba; } ;
struct hns_roce_mtr {TYPE_1__ hem_list; } ;
struct hns_roce_dev {int dummy; } ;

/* Variables and functions */
 int BA_BYTE_LEN ; 
 int /*<<< orphan*/ * FUNC0 (struct hns_roce_dev*,TYPE_1__*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int) ; 

int FUNC3(struct hns_roce_dev *hr_dev, struct hns_roce_mtr *mtr,
		      int offset, u64 *mtt_buf, int mtt_max, u64 *base_addr)
{
	u64 *mtts = mtt_buf;
	int mtt_count;
	int total = 0;
	u64 *addr;
	int npage;
	int left;

	if (mtts == NULL || mtt_max < 1)
		goto done;

	left = mtt_max;
	while (left > 0) {
		mtt_count = 0;
		addr = FUNC0(hr_dev, &mtr->hem_list,
						  offset + total,
						  &mtt_count, NULL);
		if (!addr || !mtt_count)
			goto done;

		npage = FUNC2(mtt_count, left);
		FUNC1(&mtts[total], addr, BA_BYTE_LEN * npage);
		left -= npage;
		total += npage;
	}

done:
	if (base_addr)
		*base_addr = mtr->hem_list.root_ba;

	return total;
}