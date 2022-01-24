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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct amd_mp2_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_mp2_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct amd_mp2_dev* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pci_dev)
{
	struct amd_mp2_dev *privdata = FUNC2(pci_dev);

	FUNC4(&pci_dev->dev);
	FUNC5(&pci_dev->dev);

	FUNC3(pci_dev, 0);
	FUNC1(pci_dev);

	FUNC0(privdata);
}