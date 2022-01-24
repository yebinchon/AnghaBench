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
struct usnic_ib_vf {int /*<<< orphan*/  vnic; int /*<<< orphan*/  link; struct usnic_ib_dev* pf; } ;
struct usnic_ib_dev {int /*<<< orphan*/  vf_cnt; int /*<<< orphan*/  usdev_lock; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usnic_ib_vf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct usnic_ib_vf* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usnic_ib_undiscover_pf ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct usnic_ib_vf *vf = FUNC7(pdev);
	struct usnic_ib_dev *pf = vf->pf;

	FUNC3(&pf->usdev_lock);
	FUNC2(&vf->link);
	FUNC4(&pf->usdev_lock);

	FUNC1(&pf->vf_cnt, usnic_ib_undiscover_pf);
	FUNC12(vf->vnic);
	FUNC10(pdev, NULL);
	FUNC5(pdev);
	FUNC9(pdev);
	FUNC6(pdev);
	FUNC0(vf);

	FUNC11("Removed VF %s\n", FUNC8(pdev));
}