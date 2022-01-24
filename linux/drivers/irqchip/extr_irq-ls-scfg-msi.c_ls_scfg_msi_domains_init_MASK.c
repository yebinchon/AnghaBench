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
struct ls_scfg_msi {int /*<<< orphan*/  parent; TYPE_1__* pdev; int /*<<< orphan*/  msi_domain; int /*<<< orphan*/  irqs_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ls_scfg_msi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ls_scfg_msi_domain_info ; 
 int /*<<< orphan*/  ls_scfg_msi_domain_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ls_scfg_msi *msi_data)
{
	/* Initialize MSI domain parent */
	msi_data->parent = FUNC1(NULL,
						 msi_data->irqs_num,
						 &ls_scfg_msi_domain_ops,
						 msi_data);
	if (!msi_data->parent) {
		FUNC0(&msi_data->pdev->dev, "failed to create IRQ domain\n");
		return -ENOMEM;
	}

	msi_data->msi_domain = FUNC4(
				FUNC3(msi_data->pdev->dev.of_node),
				&ls_scfg_msi_domain_info,
				msi_data->parent);
	if (!msi_data->msi_domain) {
		FUNC0(&msi_data->pdev->dev, "failed to create MSI domain\n");
		FUNC2(msi_data->parent);
		return -ENOMEM;
	}

	return 0;
}