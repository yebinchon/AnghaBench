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
struct i801_priv {int /*<<< orphan*/  tco_pdev; int /*<<< orphan*/  original_hstcfg; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBHSTCFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct i801_priv*) ; 
 struct i801_priv* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *dev)
{
	struct i801_priv *priv = FUNC4(dev);

	FUNC7(&dev->dev);
	FUNC8(&dev->dev);

	FUNC3(priv);
	FUNC2(priv);
	FUNC0(&priv->adapter);
	FUNC1(priv);
	FUNC5(dev, SMBHSTCFG, priv->original_hstcfg);

	FUNC6(priv->tco_pdev);

	/*
	 * do not call pci_disable_device(dev) since it can cause hard hangs on
	 * some systems during power-off (eg. Fujitsu-Siemens Lifebook E8010)
	 */
}