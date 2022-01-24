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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nb_smu_ind_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, unsigned int devfn,
			      unsigned int base, int offset, u32 *val)
{
	FUNC0(&nb_smu_ind_mutex);
	FUNC3(pdev->bus, devfn,
				   base, offset);
	FUNC2(pdev->bus, devfn,
				  base + 4, val);
	FUNC1(&nb_smu_ind_mutex);
}