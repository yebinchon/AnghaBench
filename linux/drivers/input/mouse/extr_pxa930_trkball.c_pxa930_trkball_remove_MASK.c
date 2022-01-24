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
struct pxa930_trkball {int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  input; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct pxa930_trkball*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa930_trkball*) ; 
 struct pxa930_trkball* FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct pxa930_trkball *trkball = FUNC4(pdev);
	int irq = FUNC5(pdev, 0);

	FUNC1(trkball->input);
	FUNC0(irq, trkball);
	FUNC2(trkball->mmio_base);
	FUNC3(trkball);

	return 0;
}