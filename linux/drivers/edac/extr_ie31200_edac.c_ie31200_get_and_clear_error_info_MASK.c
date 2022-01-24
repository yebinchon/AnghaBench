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
struct mem_ctl_info {int /*<<< orphan*/  pdev; struct ie31200_priv* pvt_info; } ;
struct ie31200_priv {int /*<<< orphan*/  c1errlog; int /*<<< orphan*/  c0errlog; } ;
struct ie31200_error_info {int errsts; int errsts2; void** eccerrlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  IE31200_ERRSTS ; 
 int IE31200_ERRSTS_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int nr_channels ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mem_ctl_info *mci,
					     struct ie31200_error_info *info)
{
	struct pci_dev *pdev;
	struct ie31200_priv *priv = mci->pvt_info;

	pdev = FUNC3(mci->pdev);

	/*
	 * This is a mess because there is no atomic way to read all the
	 * registers at once and the registers can transition from CE being
	 * overwritten by UE.
	 */
	FUNC2(pdev, IE31200_ERRSTS, &info->errsts);
	if (!(info->errsts & IE31200_ERRSTS_BITS))
		return;

	info->eccerrlog[0] = FUNC1(priv->c0errlog);
	if (nr_channels == 2)
		info->eccerrlog[1] = FUNC1(priv->c1errlog);

	FUNC2(pdev, IE31200_ERRSTS, &info->errsts2);

	/*
	 * If the error is the same for both reads then the first set
	 * of reads is valid.  If there is a change then there is a CE
	 * with no info and the second set of reads is valid and
	 * should be UE info.
	 */
	if ((info->errsts ^ info->errsts2) & IE31200_ERRSTS_BITS) {
		info->eccerrlog[0] = FUNC1(priv->c0errlog);
		if (nr_channels == 2)
			info->eccerrlog[1] =
				FUNC1(priv->c1errlog);
	}

	FUNC0(mci);
}