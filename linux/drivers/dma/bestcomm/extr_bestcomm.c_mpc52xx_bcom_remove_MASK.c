#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct mpc52xx_sdma {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ofnode; int /*<<< orphan*/  regs_base; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 TYPE_1__* bcom_eng ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	/* Clean up the engine */
	FUNC0();

	/* Cleanup SRAM */
	FUNC1();

	/* Release regs */
	FUNC2(bcom_eng->regs);
	FUNC5(bcom_eng->regs_base, sizeof(struct mpc52xx_sdma));

	/* Release the node */
	FUNC4(bcom_eng->ofnode);

	/* Release memory */
	FUNC3(bcom_eng);
	bcom_eng = NULL;

	return 0;
}