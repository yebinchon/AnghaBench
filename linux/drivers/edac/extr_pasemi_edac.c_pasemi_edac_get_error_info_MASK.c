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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCDEBUG_ERRCNT1 ; 
 int MCDEBUG_ERRCNT1_SBE_CNT_OVRFLO ; 
 int /*<<< orphan*/  MCDEBUG_ERRSTA ; 
 int MCDEBUG_ERRSTA_MBE_STATUS ; 
 int MCDEBUG_ERRSTA_RFL_STATUS ; 
 int MCDEBUG_ERRSTA_SBE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct mem_ctl_info *mci)
{
	struct pci_dev *pdev = FUNC2(mci->pdev);
	u32 tmp;

	FUNC0(pdev, MCDEBUG_ERRSTA,
			      &tmp);

	tmp &= (MCDEBUG_ERRSTA_RFL_STATUS | MCDEBUG_ERRSTA_MBE_STATUS
		| MCDEBUG_ERRSTA_SBE_STATUS);

	if (tmp) {
		if (tmp & MCDEBUG_ERRSTA_SBE_STATUS)
			FUNC1(pdev, MCDEBUG_ERRCNT1,
					       MCDEBUG_ERRCNT1_SBE_CNT_OVRFLO);
		FUNC1(pdev, MCDEBUG_ERRSTA, tmp);
	}

	return tmp;
}