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
struct sp_device {struct psp_device* psp_data; int /*<<< orphan*/  (* set_psp_master_device ) (struct sp_device*) ;scalar_t__ io_map; TYPE_1__* dev_vdata; struct device* dev; } ;
struct psp_vdata {scalar_t__ inten_reg; scalar_t__ intsts_reg; } ;
struct psp_device {int /*<<< orphan*/  sp; struct psp_vdata* vdata; scalar_t__ io_regs; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ psp_vdata; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 struct psp_device* FUNC3 (struct sp_device*) ; 
 int FUNC4 (struct psp_device*) ; 
 int /*<<< orphan*/  psp_irq_handler ; 
 int FUNC5 (struct psp_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct psp_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct psp_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sp_device*) ; 

int FUNC9(struct sp_device *sp)
{
	struct device *dev = sp->dev;
	struct psp_device *psp;
	int ret;

	ret = -ENOMEM;
	psp = FUNC3(sp);
	if (!psp)
		goto e_err;

	sp->psp_data = psp;

	psp->vdata = (struct psp_vdata *)sp->dev_vdata->psp_vdata;
	if (!psp->vdata) {
		ret = -ENODEV;
		FUNC0(dev, "missing driver data\n");
		goto e_err;
	}

	psp->io_regs = sp->io_map;

	ret = FUNC4(psp);
	if (ret)
		goto e_disable;

	/* Disable and clear interrupts until ready */
	FUNC2(0, psp->io_regs + psp->vdata->inten_reg);
	FUNC2(-1, psp->io_regs + psp->vdata->intsts_reg);

	/* Request an irq */
	ret = FUNC7(psp->sp, psp_irq_handler, psp->name, psp);
	if (ret) {
		FUNC0(dev, "psp: unable to allocate an IRQ\n");
		goto e_err;
	}

	ret = FUNC5(psp);
	if (ret)
		goto e_irq;

	if (sp->set_psp_master_device)
		sp->set_psp_master_device(sp);

	/* Enable interrupt */
	FUNC2(-1, psp->io_regs + psp->vdata->inten_reg);

	FUNC1(dev, "psp enabled\n");

	return 0;

e_irq:
	FUNC6(psp->sp, psp);
e_err:
	sp->psp_data = NULL;

	FUNC1(dev, "psp initialization failed\n");

	return ret;

e_disable:
	sp->psp_data = NULL;

	return ret;
}