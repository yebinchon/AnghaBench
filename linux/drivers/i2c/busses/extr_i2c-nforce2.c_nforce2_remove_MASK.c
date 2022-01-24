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
struct nforce2_smbus {int /*<<< orphan*/  size; scalar_t__ base; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nforce2_smbus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nforce2_smbus* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	struct nforce2_smbus *smbuses = FUNC3(dev);

	FUNC2(NULL);
	if (smbuses[0].base) {
		FUNC0(&smbuses[0].adapter);
		FUNC4(smbuses[0].base, smbuses[0].size);
	}
	if (smbuses[1].base) {
		FUNC0(&smbuses[1].adapter);
		FUNC4(smbuses[1].base, smbuses[1].size);
	}
	FUNC1(smbuses);
}