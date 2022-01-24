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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct imx_sc_pd_soc {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct imx_sc_pd_soc const*) ; 
 struct imx_sc_pd_soc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pm_ipc_handle ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	const struct imx_sc_pd_soc *pd_soc;
	int ret;

	ret = FUNC0(&pm_ipc_handle);
	if (ret)
		return ret;

	pd_soc = FUNC2(&pdev->dev);
	if (!pd_soc)
		return -ENODEV;

	return FUNC1(&pdev->dev, pd_soc);
}