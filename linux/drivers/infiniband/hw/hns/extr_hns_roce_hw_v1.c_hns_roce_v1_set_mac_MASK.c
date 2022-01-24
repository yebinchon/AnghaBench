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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hns_roce_dev {scalar_t__ reg_base; TYPE_1__* hw; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {scalar_t__ dereg_mr; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PHY_PORT_OFFSET ; 
 scalar_t__ ROCEE_SMAC_H_0_REG ; 
 int /*<<< orphan*/  ROCEE_SMAC_H_ROCEE_SMAC_H_M ; 
 int /*<<< orphan*/  ROCEE_SMAC_H_ROCEE_SMAC_H_S ; 
 scalar_t__ ROCEE_SMAC_L_0_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hns_roce_dev *hr_dev, u8 phy_port,
			       u8 *addr)
{
	u32 reg_smac_l;
	u16 reg_smac_h;
	__le32 tmp;
	u16 *p_h;
	u32 *p;
	u32 val;

	/*
	 * When mac changed, loopback may fail
	 * because of smac not equal to dmac.
	 * We Need to release and create reserved qp again.
	 */
	if (hr_dev->hw->dereg_mr) {
		int ret;

		ret = FUNC1(hr_dev);
		if (ret && ret != -ETIMEDOUT)
			return ret;
	}

	p = (u32 *)(&addr[0]);
	reg_smac_l = *p;
	FUNC3(reg_smac_l, hr_dev->reg_base + ROCEE_SMAC_L_0_REG +
		       PHY_PORT_OFFSET * phy_port);

	val = FUNC4(hr_dev,
			ROCEE_SMAC_H_0_REG + phy_port * PHY_PORT_OFFSET);
	tmp = FUNC0(val);
	p_h = (u16 *)(&addr[4]);
	reg_smac_h  = *p_h;
	FUNC5(tmp, ROCEE_SMAC_H_ROCEE_SMAC_H_M,
		       ROCEE_SMAC_H_ROCEE_SMAC_H_S, reg_smac_h);
	val = FUNC2(tmp);
	FUNC6(hr_dev, ROCEE_SMAC_H_0_REG + phy_port * PHY_PORT_OFFSET,
		   val);

	return 0;
}