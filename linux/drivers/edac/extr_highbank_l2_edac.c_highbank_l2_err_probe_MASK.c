#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_13__ {TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {char* compatible; } ;
struct hb_l2_drvdata {void* sb_irq; void* db_irq; int /*<<< orphan*/  base; } ;
struct edac_device_ctl_info {char* ctl_name; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  mod_name; TYPE_2__* dev; struct hb_l2_drvdata* pvt_info; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC9 (int,char*,int,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  hb_l2_err_of_match ; 
 int /*<<< orphan*/  highbank_l2_err_handler ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC13 (struct platform_device*,int) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	const struct of_device_id *id;
	struct edac_device_ctl_info *dci;
	struct hb_l2_drvdata *drvdata;
	struct resource *r;
	int res = 0;

	dci = FUNC9(sizeof(*drvdata), "cpu",
		1, "L", 1, 2, NULL, 0, 0);
	if (!dci)
		return -ENOMEM;

	drvdata = dci->pvt_info;
	dci->dev = &pdev->dev;
	FUNC15(pdev, dci);

	if (!FUNC6(&pdev->dev, NULL, GFP_KERNEL))
		return -ENOMEM;

	r = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC0(&pdev->dev, "Unable to get mem resource\n");
		res = -ENODEV;
		goto err;
	}

	if (!FUNC4(&pdev->dev, r->start,
				     FUNC16(r), FUNC1(&pdev->dev))) {
		FUNC0(&pdev->dev, "Error while requesting mem region\n");
		res = -EBUSY;
		goto err;
	}

	drvdata->base = FUNC2(&pdev->dev, r->start, FUNC16(r));
	if (!drvdata->base) {
		FUNC0(&pdev->dev, "Unable to map regs\n");
		res = -ENOMEM;
		goto err;
	}

	id = FUNC12(hb_l2_err_of_match, &pdev->dev);
	dci->mod_name = pdev->dev.driver->name;
	dci->ctl_name = id ? id->compatible : "unknown";
	dci->dev_name = FUNC1(&pdev->dev);

	if (FUNC8(dci))
		goto err;

	drvdata->db_irq = FUNC13(pdev, 0);
	res = FUNC3(&pdev->dev, drvdata->db_irq,
			       highbank_l2_err_handler,
			       0, FUNC1(&pdev->dev), dci);
	if (res < 0)
		goto err2;

	drvdata->sb_irq = FUNC13(pdev, 1);
	res = FUNC3(&pdev->dev, drvdata->sb_irq,
			       highbank_l2_err_handler,
			       0, FUNC1(&pdev->dev), dci);
	if (res < 0)
		goto err2;

	FUNC5(&pdev->dev, NULL);
	return 0;
err2:
	FUNC10(&pdev->dev);
err:
	FUNC7(&pdev->dev, NULL);
	FUNC11(dci);
	return res;
}