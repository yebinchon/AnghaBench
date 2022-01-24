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
struct TYPE_2__ {int /*<<< orphan*/  pci_io; int /*<<< orphan*/  dmahandle; int /*<<< orphan*/  fifos; int /*<<< orphan*/  timer; } ;
struct hfc_pci {TYPE_1__ hw; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct hfc_pci *hc)
{
	/* disable memory mapped ports + busmaster */
	FUNC3(hc->pdev, PCI_COMMAND, 0);
	FUNC0(&hc->hw.timer);
	FUNC2(hc->pdev, 0x8000, hc->hw.fifos, hc->hw.dmahandle);
	FUNC1(hc->hw.pci_io);
}