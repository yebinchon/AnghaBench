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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;
struct hns_roce_cfg_smac_tb {int /*<<< orphan*/  vf_smac_l; int /*<<< orphan*/  vf_smac_h_rsv; int /*<<< orphan*/  tb_idx_rsv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_SMAC_TB_IDX_M ; 
 int /*<<< orphan*/  CFG_SMAC_TB_IDX_S ; 
 int /*<<< orphan*/  CFG_SMAC_TB_VF_SMAC_H_M ; 
 int /*<<< orphan*/  CFG_SMAC_TB_VF_SMAC_H_S ; 
 int /*<<< orphan*/  HNS_ROCE_OPC_CFG_SMAC_TB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_cmq_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_cfg_smac_tb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hns_roce_dev *hr_dev, u8 phy_port,
			       u8 *addr)
{
	struct hns_roce_cmq_desc desc;
	struct hns_roce_cfg_smac_tb *smac_tb =
				    (struct hns_roce_cfg_smac_tb *)desc.data;
	u16 reg_smac_h;
	u32 reg_smac_l;

	FUNC2(&desc, HNS_ROCE_OPC_CFG_SMAC_TB, false);

	reg_smac_l = *(u32 *)(&addr[0]);
	reg_smac_h = *(u16 *)(&addr[4]);

	FUNC3(smac_tb, 0, sizeof(*smac_tb));
	FUNC4(smac_tb->tb_idx_rsv,
		       CFG_SMAC_TB_IDX_M,
		       CFG_SMAC_TB_IDX_S, phy_port);
	FUNC4(smac_tb->vf_smac_h_rsv,
		       CFG_SMAC_TB_VF_SMAC_H_M,
		       CFG_SMAC_TB_VF_SMAC_H_S, reg_smac_h);
	smac_tb->vf_smac_l = FUNC0(reg_smac_l);

	return FUNC1(hr_dev, &desc, 1);
}