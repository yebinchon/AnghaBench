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
struct fm801_gp {int /*<<< orphan*/  res_port; int /*<<< orphan*/  gameport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm801_gp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct fm801_gp* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pci)
{
	struct fm801_gp *gp = FUNC3(pci);

	FUNC0(gp->gameport);
	FUNC4(gp->res_port);
	FUNC1(gp);

	FUNC2(pci);
}