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
struct hns_roce_dev {int dummy; } ;

/* Variables and functions */
 int EQ_ENABLE ; 
 int EQ_REG_OFFSET ; 
 int HNS_ROCE_V2_VF_ABN_INT_CFG_M ; 
 int HNS_ROCE_V2_VF_ABN_INT_EN_M ; 
 int HNS_ROCE_V2_VF_EVENT_INT_EN_M ; 
 scalar_t__ ROCEE_VF_ABN_INT_CFG_REG ; 
 scalar_t__ ROCEE_VF_ABN_INT_EN_REG ; 
 scalar_t__ ROCEE_VF_EVENT_INT_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC1(struct hns_roce_dev *hr_dev,
					int eq_num, int enable_flag)
{
	int i;

	if (enable_flag == EQ_ENABLE) {
		for (i = 0; i < eq_num; i++)
			FUNC0(hr_dev, ROCEE_VF_EVENT_INT_EN_REG +
				   i * EQ_REG_OFFSET,
				   HNS_ROCE_V2_VF_EVENT_INT_EN_M);

		FUNC0(hr_dev, ROCEE_VF_ABN_INT_EN_REG,
			   HNS_ROCE_V2_VF_ABN_INT_EN_M);
		FUNC0(hr_dev, ROCEE_VF_ABN_INT_CFG_REG,
			   HNS_ROCE_V2_VF_ABN_INT_CFG_M);
	} else {
		for (i = 0; i < eq_num; i++)
			FUNC0(hr_dev, ROCEE_VF_EVENT_INT_EN_REG +
				   i * EQ_REG_OFFSET,
				   HNS_ROCE_V2_VF_EVENT_INT_EN_M & 0x0);

		FUNC0(hr_dev, ROCEE_VF_ABN_INT_EN_REG,
			   HNS_ROCE_V2_VF_ABN_INT_EN_M & 0x0);
		FUNC0(hr_dev, ROCEE_VF_ABN_INT_CFG_REG,
			   HNS_ROCE_V2_VF_ABN_INT_CFG_M & 0x0);
	}
}