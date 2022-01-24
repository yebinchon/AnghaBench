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
struct i801_priv {int /*<<< orphan*/  original_hstcfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBHSTCFG ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 struct i801_priv* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	struct i801_priv *priv = FUNC1(dev);

	/* Restore config registers to avoid hard hang on some systems */
	FUNC0(priv);
	FUNC2(dev, SMBHSTCFG, priv->original_hstcfg);
}