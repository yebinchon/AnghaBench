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
struct hns_roce_func_clear {int /*<<< orphan*/  func_done; } ;
struct hns_roce_dev {int is_reset; int /*<<< orphan*/  dev; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC_CLEAR_RST_FUN_DONE_S ; 
 int /*<<< orphan*/  HNS_ROCE_OPC_FUNC_CLEAR ; 
 unsigned long HNS_ROCE_V2_FUNC_CLEAR_TIMEOUT_MSECS ; 
 scalar_t__ HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_FAIL_WAIT ; 
 scalar_t__ HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_cmq_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hns_roce_dev *hr_dev)
{
	bool fclr_write_fail_flag = false;
	struct hns_roce_func_clear *resp;
	struct hns_roce_cmq_desc desc;
	unsigned long end;
	int ret = 0;

	if (FUNC3(hr_dev))
		goto out;

	FUNC2(&desc, HNS_ROCE_OPC_FUNC_CLEAR, false);
	resp = (struct hns_roce_func_clear *)desc.data;

	ret = FUNC1(hr_dev, &desc, 1);
	if (ret) {
		fclr_write_fail_flag = true;
		FUNC0(hr_dev->dev, "Func clear write failed, ret = %d.\n",
			 ret);
		goto out;
	}

	FUNC5(HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_INTERVAL);
	end = HNS_ROCE_V2_FUNC_CLEAR_TIMEOUT_MSECS;
	while (end) {
		if (FUNC3(hr_dev))
			goto out;
		FUNC5(HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_FAIL_WAIT);
		end -= HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_FAIL_WAIT;

		FUNC2(&desc, HNS_ROCE_OPC_FUNC_CLEAR,
					      true);

		ret = FUNC1(hr_dev, &desc, 1);
		if (ret)
			continue;

		if (FUNC6(resp->func_done, FUNC_CLEAR_RST_FUN_DONE_S)) {
			hr_dev->is_reset = true;
			return;
		}
	}

out:
	FUNC0(hr_dev->dev, "Func clear fail.\n");
	FUNC4(hr_dev, ret, fclr_write_fail_flag);
}