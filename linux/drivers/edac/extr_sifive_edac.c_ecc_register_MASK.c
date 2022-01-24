#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct sifive_edac_priv {TYPE_2__* dci; TYPE_1__ notifier; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {char* mod_name; int /*<<< orphan*/ * dev; void* dev_name; void* ctl_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 struct sifive_edac_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ecc_err_event ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,char*,int,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct sifive_edac_priv*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct sifive_edac_priv *p;

	p = FUNC4(&pdev->dev, sizeof(*p), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	p->notifier.notifier_call = ecc_err_event;
	FUNC9(pdev, p);

	p->dci = FUNC6(0, "sifive_ecc", 1, "sifive_ecc",
					    1, 1, NULL, 0,
					    FUNC7());
	if (FUNC0(p->dci))
		return FUNC1(p->dci);

	p->dci->dev = &pdev->dev;
	p->dci->mod_name = "Sifive ECC Manager";
	p->dci->ctl_name = FUNC3(&pdev->dev);
	p->dci->dev_name = FUNC3(&pdev->dev);

	if (FUNC5(p->dci)) {
		FUNC2(p->dci->dev, "failed to register with EDAC core\n");
		goto err;
	}

	FUNC10(&p->notifier);

	return 0;

err:
	FUNC8(p->dci);

	return -ENXIO;
}