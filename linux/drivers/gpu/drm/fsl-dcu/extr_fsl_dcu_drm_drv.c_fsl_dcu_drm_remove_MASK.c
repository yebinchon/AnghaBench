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
struct fsl_dcu_drm_device {int /*<<< orphan*/  pix_clk; int /*<<< orphan*/  clk; int /*<<< orphan*/  drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fsl_dcu_drm_device* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct fsl_dcu_drm_device *fsl_dev = FUNC4(pdev);

	FUNC3(fsl_dev->drm);
	FUNC2(fsl_dev->drm);
	FUNC0(fsl_dev->clk);
	FUNC1(fsl_dev->pix_clk);

	return 0;
}