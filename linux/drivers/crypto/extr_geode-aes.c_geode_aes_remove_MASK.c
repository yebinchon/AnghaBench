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

/* Variables and functions */
 int /*<<< orphan*/ * _iobase ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  geode_alg ; 
 int /*<<< orphan*/  geode_cbc_alg ; 
 int /*<<< orphan*/  geode_ecb_alg ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	FUNC0(&geode_alg);
	FUNC0(&geode_ecb_alg);
	FUNC0(&geode_cbc_alg);

	FUNC2(dev, _iobase);
	_iobase = NULL;

	FUNC3(dev);
	FUNC1(dev);
}