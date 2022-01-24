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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {struct pci_dev* einj; struct pci_dev* ch1mm; struct pci_dev* ch0mm; int /*<<< orphan*/  i5100_scrubbing; scalar_t__ scrub_enable; int /*<<< orphan*/  debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mem_ctl_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct mem_ctl_info *mci;
	struct i5100_priv *priv;

	mci = FUNC2(&pdev->dev);

	if (!mci)
		return;

	priv = mci->pvt_info;

	FUNC1(priv->debugfs);

	priv->scrub_enable = 0;
	FUNC0(&(priv->i5100_scrubbing));

	FUNC5(pdev);
	FUNC5(priv->ch0mm);
	FUNC5(priv->ch1mm);
	FUNC5(priv->einj);
	FUNC4(priv->ch0mm);
	FUNC4(priv->ch1mm);
	FUNC4(priv->einj);

	FUNC3(mci);
}