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
typedef  int /*<<< orphan*/  u32 ;
struct hns_roce_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ALL_PORT_VAL_OPEN ; 
 int /*<<< orphan*/  ROCEE_GLB_CFG_REG ; 
 int /*<<< orphan*/  ROCEE_GLB_CFG_ROCEE_PORT_ST_M ; 
 int /*<<< orphan*/  ROCEE_GLB_CFG_ROCEE_PORT_ST_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hns_roce_dev *hr_dev, int enable_flag)
{
	__le32 tmp;
	u32 val;

	if (enable_flag) {
		val = FUNC2(hr_dev, ROCEE_GLB_CFG_REG);
		 /* Open all ports */
		tmp = FUNC0(val);
		FUNC3(tmp, ROCEE_GLB_CFG_ROCEE_PORT_ST_M,
			       ROCEE_GLB_CFG_ROCEE_PORT_ST_S,
			       ALL_PORT_VAL_OPEN);
		val = FUNC1(tmp);
		FUNC4(hr_dev, ROCEE_GLB_CFG_REG, val);
	} else {
		val = FUNC2(hr_dev, ROCEE_GLB_CFG_REG);
		/* Close all ports */
		tmp = FUNC0(val);
		FUNC3(tmp, ROCEE_GLB_CFG_ROCEE_PORT_ST_M,
			       ROCEE_GLB_CFG_ROCEE_PORT_ST_S, 0x0);
		val = FUNC1(tmp);
		FUNC4(hr_dev, ROCEE_GLB_CFG_REG, val);
	}
}