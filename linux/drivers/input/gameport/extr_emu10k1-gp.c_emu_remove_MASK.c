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
struct pci_dev {int dummy; } ;
struct emu {int /*<<< orphan*/  size; int /*<<< orphan*/  io; int /*<<< orphan*/  gameport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct emu* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct emu *emu = FUNC3(pdev);

	FUNC0(emu->gameport);
	FUNC4(emu->io, emu->size);
	FUNC1(emu);

	FUNC2(pdev);
}