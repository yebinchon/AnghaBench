#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tpci200_board {TYPE_1__* info; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {TYPE_2__* pdev; int /*<<< orphan*/  cfg_regs; int /*<<< orphan*/  interface_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPCI200_CFG_MEM_BAR ; 
 int /*<<< orphan*/  TPCI200_IO_ID_INT_SPACES_BAR ; 
 int /*<<< orphan*/  TPCI200_IP_INTERFACE_BAR ; 
 int /*<<< orphan*/  TPCI200_MEM16_SPACE_BAR ; 
 int /*<<< orphan*/  TPCI200_MEM8_SPACE_BAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tpci200_board *tpci200)
{
	FUNC0(tpci200->info->pdev->irq, (void *) tpci200);

	FUNC3(tpci200->info->pdev, tpci200->info->interface_regs);
	FUNC3(tpci200->info->pdev, tpci200->info->cfg_regs);

	FUNC4(tpci200->info->pdev, TPCI200_IP_INTERFACE_BAR);
	FUNC4(tpci200->info->pdev, TPCI200_IO_ID_INT_SPACES_BAR);
	FUNC4(tpci200->info->pdev, TPCI200_MEM16_SPACE_BAR);
	FUNC4(tpci200->info->pdev, TPCI200_MEM8_SPACE_BAR);
	FUNC4(tpci200->info->pdev, TPCI200_CFG_MEM_BAR);

	FUNC2(tpci200->info->pdev);
	FUNC1(tpci200->info->pdev);
}