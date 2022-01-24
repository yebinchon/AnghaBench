#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  function; int /*<<< orphan*/  slot; int /*<<< orphan*/  bus; } ;
struct TYPE_5__ {TYPE_1__ pci; } ;
struct TYPE_6__ {TYPE_2__ interface_path; } ;
struct edd_info {TYPE_3__ params; } ;
struct edd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct edd_info* FUNC1 (struct edd_device*) ; 
 scalar_t__ FUNC2 (struct edd_device*,char*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pci_dev *
FUNC4(struct edd_device *edev)
{
	struct edd_info *info = FUNC1(edev);

	if (FUNC2(edev, "PCI") || FUNC2(edev, "XPRS")) {
		return FUNC3(0,
				info->params.interface_path.pci.bus,
				FUNC0(info->params.interface_path.pci.slot,
				info->params.interface_path.pci.function));
	}
	return NULL;
}