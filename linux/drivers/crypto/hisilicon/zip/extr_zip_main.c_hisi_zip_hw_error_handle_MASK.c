#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ io_base; } ;
struct hisi_zip {TYPE_1__ qm; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 scalar_t__ HZIP_CORE_INT_SOURCE ; 
 scalar_t__ HZIP_CORE_INT_STATUS ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_zip*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static pci_ers_result_t FUNC3(struct hisi_zip *hisi_zip)
{
	u32 err_sts;

	/* read err sts */
	err_sts = FUNC1(hisi_zip->qm.io_base + HZIP_CORE_INT_STATUS);

	if (err_sts) {
		FUNC0(hisi_zip, err_sts);
		/* clear error interrupts */
		FUNC2(err_sts, hisi_zip->qm.io_base + HZIP_CORE_INT_SOURCE);

		return PCI_ERS_RESULT_NEED_RESET;
	}

	return PCI_ERS_RESULT_RECOVERED;
}