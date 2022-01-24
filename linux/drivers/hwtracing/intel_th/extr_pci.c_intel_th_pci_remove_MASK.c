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
struct intel_th {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_th*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct intel_th* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct intel_th *th = FUNC2(pdev);

	FUNC0(th);

	FUNC1(pdev);
}