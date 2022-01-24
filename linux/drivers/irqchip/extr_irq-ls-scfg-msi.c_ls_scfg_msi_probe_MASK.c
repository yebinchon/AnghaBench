#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct ls_scfg_msi_cfg {int ibs_shift; } ;
struct ls_scfg_msi {int irqs_num; scalar_t__ msir_num; void* msir; void* used; struct ls_scfg_msi_cfg* cfg; int /*<<< orphan*/  lock; struct platform_device* pdev; int /*<<< orphan*/  msiir_addr; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MSI_IRQS_PER_MSIR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct resource*) ; 
 void* FUNC6 (TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct ls_scfg_msi* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ls_scfg_msi*) ; 
 int /*<<< orphan*/  ls_scfg_msi_id ; 
 int /*<<< orphan*/  FUNC9 (struct ls_scfg_msi*,int) ; 
 scalar_t__ msi_affinity_flag ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct ls_scfg_msi*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct ls_scfg_msi *msi_data;
	struct resource *res;
	int i, ret;

	match = FUNC12(ls_scfg_msi_id, &pdev->dev);
	if (!match)
		return -ENODEV;

	msi_data = FUNC7(&pdev->dev, sizeof(*msi_data), GFP_KERNEL);
	if (!msi_data)
		return -ENOMEM;

	msi_data->cfg = (struct ls_scfg_msi_cfg *) match->data;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	msi_data->regs = FUNC5(&pdev->dev, res);
	if (FUNC1(msi_data->regs)) {
		FUNC4(&pdev->dev, "failed to initialize 'regs'\n");
		return FUNC2(msi_data->regs);
	}
	msi_data->msiir_addr = res->start;

	msi_data->pdev = pdev;
	FUNC15(&msi_data->lock);

	msi_data->irqs_num = MSI_IRQS_PER_MSIR *
			     (1 << msi_data->cfg->ibs_shift);
	msi_data->used = FUNC6(&pdev->dev,
				    FUNC0(msi_data->irqs_num),
				    sizeof(*msi_data->used),
				    GFP_KERNEL);
	if (!msi_data->used)
		return -ENOMEM;
	/*
	 * Reserve all the hwirqs
	 * The available hwirqs will be released in ls1_msi_setup_hwirq()
	 */
	FUNC3(msi_data->used, 0, msi_data->irqs_num);

	msi_data->msir_num = FUNC11(pdev->dev.of_node);

	if (msi_affinity_flag) {
		u32 cpu_num;

		cpu_num = FUNC10();
		if (msi_data->msir_num >= cpu_num)
			msi_data->msir_num = cpu_num;
		else
			msi_affinity_flag = 0;
	}

	msi_data->msir = FUNC6(&pdev->dev, msi_data->msir_num,
				      sizeof(*msi_data->msir),
				      GFP_KERNEL);
	if (!msi_data->msir)
		return -ENOMEM;

	for (i = 0; i < msi_data->msir_num; i++)
		FUNC9(msi_data, i);

	ret = FUNC8(msi_data);
	if (ret)
		return ret;

	FUNC14(pdev, msi_data);

	return 0;
}