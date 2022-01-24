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
struct hns_roce_vf_switch {int /*<<< orphan*/  cfg; int /*<<< orphan*/  fun_id; int /*<<< orphan*/  rocee_sel; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {int /*<<< orphan*/  flag; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ICL_SWITCH_CMD_ROCEE_SEL ; 
 int HNS_ROCE_CMD_FLAG_IN ; 
 int HNS_ROCE_CMD_FLAG_NO_INTR ; 
 int HNS_ROCE_CMD_FLAG_WR ; 
 int /*<<< orphan*/  HNS_SWITCH_PARAMETER_CFG ; 
 int /*<<< orphan*/  VF_SWITCH_DATA_CFG_ALW_DST_OVRD_S ; 
 int /*<<< orphan*/  VF_SWITCH_DATA_CFG_ALW_LCL_LPBK_S ; 
 int /*<<< orphan*/  VF_SWITCH_DATA_CFG_ALW_LPBK_S ; 
 int /*<<< orphan*/  VF_SWITCH_DATA_FUN_ID_VF_ID_M ; 
 int /*<<< orphan*/  VF_SWITCH_DATA_FUN_ID_VF_ID_S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_cmq_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hns_roce_dev *hr_dev,
						  int vf_id)
{
	struct hns_roce_cmq_desc desc;
	struct hns_roce_vf_switch *swt;
	int ret;

	swt = (struct hns_roce_vf_switch *)desc.data;
	FUNC3(&desc, HNS_SWITCH_PARAMETER_CFG, true);
	swt->rocee_sel |= FUNC1(HNS_ICL_SWITCH_CMD_ROCEE_SEL);
	FUNC5(swt->fun_id,
			VF_SWITCH_DATA_FUN_ID_VF_ID_M,
			VF_SWITCH_DATA_FUN_ID_VF_ID_S,
			vf_id);
	ret = FUNC2(hr_dev, &desc, 1);
	if (ret)
		return ret;
	desc.flag =
		FUNC0(HNS_ROCE_CMD_FLAG_NO_INTR | HNS_ROCE_CMD_FLAG_IN);
	desc.flag &= FUNC0(~HNS_ROCE_CMD_FLAG_WR);
	FUNC4(swt->cfg, VF_SWITCH_DATA_CFG_ALW_LPBK_S, 1);
	FUNC4(swt->cfg, VF_SWITCH_DATA_CFG_ALW_LCL_LPBK_S, 0);
	FUNC4(swt->cfg, VF_SWITCH_DATA_CFG_ALW_DST_OVRD_S, 1);

	return FUNC2(hr_dev, &desc, 1);
}