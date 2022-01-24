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
typedef  int u32 ;
struct TYPE_2__ {int num_comp_vectors; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int CEQ_REG_OFFSET ; 
 int /*<<< orphan*/  ROCEE_CAEP_AE_MASK_CAEP_AEQ_ALM_OVF_MASK_S ; 
 int /*<<< orphan*/  ROCEE_CAEP_AE_MASK_CAEP_AE_IRQ_MASK_S ; 
 scalar_t__ ROCEE_CAEP_AE_MASK_REG ; 
 scalar_t__ ROCEE_CAEP_CE_IRQ_MASK_0_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hns_roce_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct hns_roce_dev *hr_dev)
{
	u32 aemask_val;
	int masken = 0;
	__le32 tmp;
	int i;

	/* AEQ INT */
	aemask_val = FUNC2(hr_dev, ROCEE_CAEP_AE_MASK_REG);
	tmp = FUNC0(aemask_val);
	FUNC3(tmp, ROCEE_CAEP_AE_MASK_CAEP_AEQ_ALM_OVF_MASK_S,
		     masken);
	FUNC3(tmp, ROCEE_CAEP_AE_MASK_CAEP_AE_IRQ_MASK_S, masken);
	aemask_val = FUNC1(tmp);
	FUNC4(hr_dev, ROCEE_CAEP_AE_MASK_REG, aemask_val);

	/* CEQ INT */
	for (i = 0; i < hr_dev->caps.num_comp_vectors; i++) {
		/* IRQ mask */
		FUNC4(hr_dev, ROCEE_CAEP_CE_IRQ_MASK_0_REG +
			   i * CEQ_REG_OFFSET, masken);
	}
}