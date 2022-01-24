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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  datafifodepth; int /*<<< orphan*/  cmdfifodepth; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct dw_i3c_master {int datstartaddr; int maxdevs; scalar_t__ core_clk; scalar_t__ core_rst; int /*<<< orphan*/  base; int /*<<< orphan*/  free_pos; scalar_t__ regs; TYPE_2__ caps; TYPE_1__ xferqueue; } ;

/* Variables and functions */
 scalar_t__ DATA_BUFFER_STATUS_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEVICE_ADDR_TABLE_POINTER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTR_ALL ; 
 scalar_t__ INTR_STATUS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ QUEUE_STATUS_LEVEL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct resource*) ; 
 struct dw_i3c_master* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dw_i3c_master*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dw_i3c_master_irq_handler ; 
 int /*<<< orphan*/  dw_mipi_i3c_ops ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct dw_i3c_master*) ; 
 int FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct dw_i3c_master *master;
	struct resource *res;
	int ret, irq;

	master = FUNC11(&pdev->dev, sizeof(*master), GFP_KERNEL);
	if (!master)
		return -ENOMEM;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	master->regs = FUNC10(&pdev->dev, res);
	if (FUNC3(master->regs))
		return FUNC4(master->regs);

	master->core_clk = FUNC9(&pdev->dev, NULL);
	if (FUNC3(master->core_clk))
		return FUNC4(master->core_clk);

	master->core_rst = FUNC13(&pdev->dev,
								    "core_rst");
	if (FUNC3(master->core_rst))
		return FUNC4(master->core_rst);

	ret = FUNC7(master->core_clk);
	if (ret)
		goto err_disable_core_clk;

	FUNC20(master->core_rst);

	FUNC21(&master->xferqueue.lock);
	FUNC2(&master->xferqueue.list);

	FUNC22(INTR_ALL, master->regs + INTR_STATUS);
	irq = FUNC15(pdev, 0);
	ret = FUNC12(&pdev->dev, irq,
			       dw_i3c_master_irq_handler, 0,
			       FUNC8(&pdev->dev), master);
	if (ret)
		goto err_assert_rst;

	FUNC17(pdev, master);

	/* Information regarding the FIFOs/QUEUEs depth */
	ret = FUNC18(master->regs + QUEUE_STATUS_LEVEL);
	master->caps.cmdfifodepth = FUNC5(ret);

	ret = FUNC18(master->regs + DATA_BUFFER_STATUS_LEVEL);
	master->caps.datafifodepth = FUNC0(ret);

	ret = FUNC18(master->regs + DEVICE_ADDR_TABLE_POINTER);
	master->datstartaddr = ret;
	master->maxdevs = ret >> 16;
	master->free_pos = FUNC1(master->maxdevs - 1, 0);

	ret = FUNC14(&master->base, &pdev->dev,
				  &dw_mipi_i3c_ops, false);
	if (ret)
		goto err_assert_rst;

	return 0;

err_assert_rst:
	FUNC19(master->core_rst);

err_disable_core_clk:
	FUNC6(master->core_clk);

	return ret;
}