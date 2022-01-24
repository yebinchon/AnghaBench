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
struct edac_device_prv_data {scalar_t__ ue_clear_mask; scalar_t__ ce_clear_mask; } ;
struct edac_device_ctl_info {struct altr_edac_device_dev* pvt_info; } ;
struct altr_edac_device_dev {int sb_irq; int db_irq; int /*<<< orphan*/  edac_dev_name; int /*<<< orphan*/  base; struct edac_device_prv_data* data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	irqreturn_t ret_value = IRQ_NONE;
	struct edac_device_ctl_info *dci = dev_id;
	struct altr_edac_device_dev *drvdata = dci->pvt_info;
	const struct edac_device_prv_data *priv = drvdata->data;

	if (irq == drvdata->sb_irq) {
		if (priv->ce_clear_mask)
			FUNC4(priv->ce_clear_mask, drvdata->base);
		FUNC1(dci, 0, 0, drvdata->edac_dev_name);
		ret_value = IRQ_HANDLED;
	} else if (irq == drvdata->db_irq) {
		if (priv->ue_clear_mask)
			FUNC4(priv->ue_clear_mask, drvdata->base);
		FUNC2(dci, 0, 0, drvdata->edac_dev_name);
		FUNC3("\nEDAC:ECC_DEVICE[Uncorrectable errors]\n");
		ret_value = IRQ_HANDLED;
	} else {
		FUNC0(1);
	}

	return ret_value;
}