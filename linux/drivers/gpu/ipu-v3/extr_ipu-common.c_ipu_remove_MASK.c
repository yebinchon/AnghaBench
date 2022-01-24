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
struct ipu_soc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct ipu_soc* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ipu_soc *ipu = FUNC4(pdev);

	FUNC3(pdev);
	FUNC2(ipu);
	FUNC1(ipu);

	FUNC0(ipu->clk);

	return 0;
}