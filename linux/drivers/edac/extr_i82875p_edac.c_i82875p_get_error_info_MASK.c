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
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  pdev; } ;
struct i82875p_error_info {int errsts; int errsts2; int /*<<< orphan*/  derrsyn; int /*<<< orphan*/  des; int /*<<< orphan*/  eap; } ;

/* Variables and functions */
 int /*<<< orphan*/  I82875P_DERRSYN ; 
 int /*<<< orphan*/  I82875P_DES ; 
 int /*<<< orphan*/  I82875P_EAP ; 
 int /*<<< orphan*/  I82875P_ERRSTS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci,
				struct i82875p_error_info *info)
{
	struct pci_dev *pdev;

	pdev = FUNC4(mci->pdev);

	/*
	 * This is a mess because there is no atomic way to read all the
	 * registers at once and the registers can transition from CE being
	 * overwritten by UE.
	 */
	FUNC2(pdev, I82875P_ERRSTS, &info->errsts);

	if (!(info->errsts & 0x0081))
		return;

	FUNC1(pdev, I82875P_EAP, &info->eap);
	FUNC0(pdev, I82875P_DES, &info->des);
	FUNC0(pdev, I82875P_DERRSYN, &info->derrsyn);
	FUNC2(pdev, I82875P_ERRSTS, &info->errsts2);

	/*
	 * If the error is the same then we can for both reads then
	 * the first set of reads is valid.  If there is a change then
	 * there is a CE no info and the second set of reads is valid
	 * and should be UE info.
	 */
	if ((info->errsts ^ info->errsts2) & 0x0081) {
		FUNC1(pdev, I82875P_EAP, &info->eap);
		FUNC0(pdev, I82875P_DES, &info->des);
		FUNC0(pdev, I82875P_DERRSYN, &info->derrsyn);
	}

	FUNC3(pdev, I82875P_ERRSTS, 0x0081, 0x0081);
}