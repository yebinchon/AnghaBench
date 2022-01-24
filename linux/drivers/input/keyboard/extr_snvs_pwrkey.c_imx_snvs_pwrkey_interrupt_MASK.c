#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pwrkey_drv_data {int /*<<< orphan*/  snvs; int /*<<< orphan*/  check_timer; TYPE_2__* input; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBOUNCE_TIME ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SNVS_LPSR_REG ; 
 int SNVS_LPSR_SPO ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct pwrkey_drv_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct platform_device *pdev = dev_id;
	struct pwrkey_drv_data *pdata = FUNC2(pdev);
	u32 lp_status;

	FUNC3(pdata->input->dev.parent, 0);

	FUNC4(pdata->snvs, SNVS_LPSR_REG, &lp_status);
	if (lp_status & SNVS_LPSR_SPO)
		FUNC0(&pdata->check_timer, jiffies + FUNC1(DEBOUNCE_TIME));

	/* clear SPO status */
	FUNC5(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);

	return IRQ_HANDLED;
}