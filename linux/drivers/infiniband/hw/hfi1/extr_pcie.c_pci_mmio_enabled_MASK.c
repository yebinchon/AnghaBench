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
typedef  unsigned long long u64 ;
struct pci_dev {int dummy; } ;
struct hfi1_devdata {scalar_t__ pport; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_INVALID_VL ; 
 int /*<<< orphan*/  C_RX_WORDS ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC1 (struct pci_dev*) ; 
 unsigned long long FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pci_ers_result_t
FUNC3(struct pci_dev *pdev)
{
	u64 words = 0U;
	struct hfi1_devdata *dd = FUNC1(pdev);
	pci_ers_result_t ret = PCI_ERS_RESULT_RECOVERED;

	if (dd && dd->pport) {
		words = FUNC2(dd->pport, C_RX_WORDS, CNTR_INVALID_VL);
		if (words == ~0ULL)
			ret = PCI_ERS_RESULT_NEED_RESET;
		FUNC0(dd,
			    "HFI1 mmio_enabled function called, read wordscntr %llx, returning %d\n",
			    words, ret);
	}
	return  ret;
}