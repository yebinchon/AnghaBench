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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ioat_dca_priv {int requester_count; int max_requesters; int iobase; scalar_t__ dca_base; TYPE_1__* req_slots; } ;
struct device {int dummy; } ;
struct dca_provider {int dummy; } ;
struct TYPE_2__ {int rid; struct pci_dev* pdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 scalar_t__ IOAT3_DCA_GREQID_OFFSET ; 
 int IOAT_DCA_GREQID_VALID ; 
 struct ioat_dca_priv* FUNC0 (struct dca_provider*) ; 
 int FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (scalar_t__) ; 
 struct pci_dev* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct dca_provider *dca, struct device *dev)
{
	struct ioat_dca_priv *ioatdca = FUNC0(dca);
	struct pci_dev *pdev;
	int i;
	u16 id;
	u16 global_req_table;

	/* This implementation only supports PCI-Express */
	if (!FUNC2(dev))
		return -ENODEV;
	pdev = FUNC4(dev);
	id = FUNC1(pdev);

	if (ioatdca->requester_count == ioatdca->max_requesters)
		return -ENODEV;

	for (i = 0; i < ioatdca->max_requesters; i++) {
		if (ioatdca->req_slots[i].pdev == NULL) {
			/* found an empty slot */
			ioatdca->requester_count++;
			ioatdca->req_slots[i].pdev = pdev;
			ioatdca->req_slots[i].rid = id;
			global_req_table =
			      FUNC3(ioatdca->dca_base + IOAT3_DCA_GREQID_OFFSET);
			FUNC5(id | IOAT_DCA_GREQID_VALID,
			       ioatdca->iobase + global_req_table + (i * 4));
			return i;
		}
	}
	/* Error, ioatdma->requester_count is out of whack */
	return -EFAULT;
}