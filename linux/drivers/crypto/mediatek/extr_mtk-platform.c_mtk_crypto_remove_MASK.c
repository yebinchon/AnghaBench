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
struct mtk_cryp {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_cryp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_cryp*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_cryp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_cryp*) ; 
 struct mtk_cryp* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mtk_cryp *cryp = FUNC4(pdev);

	FUNC3(cryp);
	FUNC1(cryp);
	FUNC2(cryp);

	FUNC0(cryp->clk_cryp);

	FUNC7(cryp->dev);
	FUNC6(cryp->dev);
	FUNC5(pdev, NULL);

	return 0;
}