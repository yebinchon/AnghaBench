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
struct edac_pci_ctl_info {int /*<<< orphan*/  name; int /*<<< orphan*/  op_state; void* pvt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OP_ALLOC ; 
 void* FUNC0 (void**,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct edac_pci_ctl_info* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

struct edac_pci_ctl_info *FUNC5(unsigned int sz_pvt,
						const char *edac_pci_name)
{
	struct edac_pci_ctl_info *pci;
	void *p = NULL, *pvt;
	unsigned int size;

	FUNC1(1, "\n");

	pci = FUNC0(&p, sizeof(*pci), 1);
	pvt = FUNC0(&p, 1, sz_pvt);
	size = ((unsigned long)pvt) + sz_pvt;

	/* Alloc the needed control struct memory */
	pci = FUNC2(size, GFP_KERNEL);
	if (pci  == NULL)
		return NULL;

	/* Now much private space */
	pvt = sz_pvt ? ((char *)pci) + ((unsigned long)pvt) : NULL;

	pci->pvt_info = pvt;
	pci->op_state = OP_ALLOC;

	FUNC3(pci->name, FUNC4(edac_pci_name) + 1, "%s", edac_pci_name);

	return pci;
}