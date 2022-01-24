#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; } ;
struct qcom_scm {TYPE_1__* dev; int /*<<< orphan*/ * core_clk; TYPE_4__ reset; int /*<<< orphan*/ * bus_clk; int /*<<< orphan*/ * iface_clk; int /*<<< orphan*/  dload_mode_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long SCM_HAS_BUS_CLK ; 
 unsigned long SCM_HAS_CORE_CLK ; 
 unsigned long SCM_HAS_IFACE_CLK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct qcom_scm* __scm ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 void* FUNC5 (TYPE_1__*,char*) ; 
 struct qcom_scm* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,TYPE_4__*) ; 
 scalar_t__ download_mode ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcom_scm_pas_reset_ops ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct qcom_scm *scm;
	unsigned long clks;
	int ret;

	scm = FUNC6(&pdev->dev, sizeof(*scm), GFP_KERNEL);
	if (!scm)
		return -ENOMEM;

	ret = FUNC9(&pdev->dev, &scm->dload_mode_addr);
	if (ret < 0)
		return ret;

	clks = (unsigned long)FUNC8(&pdev->dev);

	scm->core_clk = FUNC5(&pdev->dev, "core");
	if (FUNC0(scm->core_clk)) {
		if (FUNC1(scm->core_clk) == -EPROBE_DEFER)
			return FUNC1(scm->core_clk);

		if (clks & SCM_HAS_CORE_CLK) {
			FUNC4(&pdev->dev, "failed to acquire core clk\n");
			return FUNC1(scm->core_clk);
		}

		scm->core_clk = NULL;
	}

	scm->iface_clk = FUNC5(&pdev->dev, "iface");
	if (FUNC0(scm->iface_clk)) {
		if (FUNC1(scm->iface_clk) == -EPROBE_DEFER)
			return FUNC1(scm->iface_clk);

		if (clks & SCM_HAS_IFACE_CLK) {
			FUNC4(&pdev->dev, "failed to acquire iface clk\n");
			return FUNC1(scm->iface_clk);
		}

		scm->iface_clk = NULL;
	}

	scm->bus_clk = FUNC5(&pdev->dev, "bus");
	if (FUNC0(scm->bus_clk)) {
		if (FUNC1(scm->bus_clk) == -EPROBE_DEFER)
			return FUNC1(scm->bus_clk);

		if (clks & SCM_HAS_BUS_CLK) {
			FUNC4(&pdev->dev, "failed to acquire bus clk\n");
			return FUNC1(scm->bus_clk);
		}

		scm->bus_clk = NULL;
	}

	scm->reset.ops = &qcom_scm_pas_reset_ops;
	scm->reset.nr_resets = 1;
	scm->reset.of_node = pdev->dev.of_node;
	ret = FUNC7(&pdev->dev, &scm->reset);
	if (ret)
		return ret;

	/* vote for max clk rate for highest performance */
	ret = FUNC3(scm->core_clk, INT_MAX);
	if (ret)
		return ret;

	__scm = scm;
	__scm->dev = &pdev->dev;

	FUNC2();

	/*
	 * If requested enable "download mode", from this point on warmboot
	 * will cause the the boot stages to enter download mode, unless
	 * disabled below by a clean shutdown/reboot.
	 */
	if (download_mode)
		FUNC10(true);

	return 0;
}