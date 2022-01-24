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
struct platform_device {int dummy; } ;
struct ls_scfg_msi {int msir_num; int /*<<< orphan*/  parent; int /*<<< orphan*/  msi_domain; int /*<<< orphan*/ * msir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ls_scfg_msi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ls_scfg_msi *msi_data = FUNC2(pdev);
	int i;

	for (i = 0; i < msi_data->msir_num; i++)
		FUNC1(&msi_data->msir[i]);

	FUNC0(msi_data->msi_domain);
	FUNC0(msi_data->parent);

	FUNC3(pdev, NULL);

	return 0;
}