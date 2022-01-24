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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct hns_roce_dev {struct pci_dev* pci_dev; struct device* dev; } ;
struct hnae3_ae_ops {int /*<<< orphan*/  (* reset_event ) (struct pci_dev*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_default_reset_request ) (struct hnae3_ae_dev*,int /*<<< orphan*/ ) ;} ;
struct hnae3_ae_dev {struct hnae3_ae_ops* ops; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HNAE3_FUNC_RESET ; 
 int HNS_ROCE_V2_VF_ABN_INT_EN_S ; 
 int HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S ; 
 int HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S ; 
 int HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ROCEE_VF_ABN_INT_EN_REG ; 
 int /*<<< orphan*/  ROCEE_VF_ABN_INT_ST_REG ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct hnae3_ae_dev* FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hnae3_ae_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct hns_roce_dev *hr_dev = dev_id;
	struct device *dev = hr_dev->dev;
	int int_work = 0;
	u32 int_st;
	u32 int_en;

	/* Abnormal interrupt */
	int_st = FUNC4(hr_dev, ROCEE_VF_ABN_INT_ST_REG);
	int_en = FUNC4(hr_dev, ROCEE_VF_ABN_INT_EN_REG);

	if (int_st & FUNC0(HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S)) {
		struct pci_dev *pdev = hr_dev->pci_dev;
		struct hnae3_ae_dev *ae_dev = FUNC3(pdev);
		const struct hnae3_ae_ops *ops = ae_dev->ops;

		FUNC2(dev, "AEQ overflow!\n");

		int_st |= 1 << HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S;
		FUNC5(hr_dev, ROCEE_VF_ABN_INT_ST_REG, int_st);

		/* Set reset level for reset_event() */
		if (ops->set_default_reset_request)
			ops->set_default_reset_request(ae_dev,
						       HNAE3_FUNC_RESET);
		if (ops->reset_event)
			ops->reset_event(pdev, NULL);

		int_en |= 1 << HNS_ROCE_V2_VF_ABN_INT_EN_S;
		FUNC5(hr_dev, ROCEE_VF_ABN_INT_EN_REG, int_en);

		int_work = 1;
	} else if (int_st & FUNC0(HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S)) {
		FUNC2(dev, "BUS ERR!\n");

		int_st |= 1 << HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S;
		FUNC5(hr_dev, ROCEE_VF_ABN_INT_ST_REG, int_st);

		int_en |= 1 << HNS_ROCE_V2_VF_ABN_INT_EN_S;
		FUNC5(hr_dev, ROCEE_VF_ABN_INT_EN_REG, int_en);

		int_work = 1;
	} else if (int_st & FUNC0(HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S)) {
		FUNC2(dev, "OTHER ERR!\n");

		int_st |= 1 << HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S;
		FUNC5(hr_dev, ROCEE_VF_ABN_INT_ST_REG, int_st);

		int_en |= 1 << HNS_ROCE_V2_VF_ABN_INT_EN_S;
		FUNC5(hr_dev, ROCEE_VF_ABN_INT_EN_REG, int_en);

		int_work = 1;
	} else
		FUNC2(dev, "There is no abnormal irq found!\n");

	return FUNC1(int_work);
}