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
struct usnic_ib_vf {scalar_t__ qp_grp_ref_cnt; struct usnic_ib_pd* pd; int /*<<< orphan*/  vnic; int /*<<< orphan*/  lock; } ;
struct usnic_ib_qp_grp {struct usnic_ib_vf* vf; } ;
struct usnic_ib_pd {int /*<<< orphan*/  umem_pd; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usnic_ib_vf *vf,
				struct usnic_ib_pd *pd,
				struct usnic_ib_qp_grp *qp_grp)
{
	int err;
	struct pci_dev *pdev;

	FUNC1(&vf->lock);

	pdev = FUNC5(vf->vnic);
	if (vf->qp_grp_ref_cnt == 0) {
		err = FUNC4(pd->umem_pd, &pdev->dev);
		if (err) {
			FUNC3("Failed to attach %s to domain\n",
					FUNC2(pdev));
			return err;
		}
		vf->pd = pd;
	}
	vf->qp_grp_ref_cnt++;

	FUNC0(vf->pd != pd);
	qp_grp->vf = vf;

	return 0;
}