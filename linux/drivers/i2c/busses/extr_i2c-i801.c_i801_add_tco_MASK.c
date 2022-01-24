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
typedef  int u32 ;
typedef  int /*<<< orphan*/  tco_res ;
struct resource {int start; int end; void* flags; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; int /*<<< orphan*/  devfn; } ;
struct i801_priv {int features; int /*<<< orphan*/  tco_pdev; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPIBASE ; 
 int ACPIBASE_SMI_OFF ; 
 int /*<<< orphan*/  ACPICTRL ; 
 int ACPICTRL_EN ; 
 int FEATURE_TCO_CNL ; 
 int FEATURE_TCO_SPT ; 
 size_t ICH_RES_IO_SMI ; 
 size_t ICH_RES_IO_TCO ; 
 void* IORESOURCE_IO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCOBASE ; 
 int /*<<< orphan*/  TCOCTL ; 
 int TCOCTL_EN ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct i801_priv*,struct pci_dev*,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct i801_priv*,struct pci_dev*,struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC11(struct i801_priv *priv)
{
	u32 base_addr, tco_base, tco_ctl, ctrl_val;
	struct pci_dev *pci_dev = priv->pci_dev;
	struct resource tco_res[3], *res;
	unsigned int devfn;

	/* If we have ACPI based watchdog use that instead */
	if (FUNC3())
		return;

	if (!(priv->features & (FEATURE_TCO_SPT | FEATURE_TCO_CNL)))
		return;

	FUNC10(pci_dev, TCOBASE, &tco_base);
	FUNC10(pci_dev, TCOCTL, &tco_ctl);
	if (!(tco_ctl & TCOCTL_EN))
		return;

	FUNC7(tco_res, 0, sizeof(tco_res));

	res = &tco_res[ICH_RES_IO_TCO];
	res->start = tco_base & ~1;
	res->end = res->start + 32 - 1;
	res->flags = IORESOURCE_IO;

	/*
	 * Power Management registers.
	 */
	devfn = FUNC1(FUNC2(pci_dev->devfn), 2);
	FUNC8(pci_dev->bus, devfn, ACPIBASE, &base_addr);

	res = &tco_res[ICH_RES_IO_SMI];
	res->start = (base_addr & ~1) + ACPIBASE_SMI_OFF;
	res->end = res->start + 3;
	res->flags = IORESOURCE_IO;

	/*
	 * Enable the ACPI I/O space.
	 */
	FUNC8(pci_dev->bus, devfn, ACPICTRL, &ctrl_val);
	ctrl_val |= ACPICTRL_EN;
	FUNC9(pci_dev->bus, devfn, ACPICTRL, ctrl_val);

	if (priv->features & FEATURE_TCO_CNL)
		priv->tco_pdev = FUNC5(priv, pci_dev, tco_res);
	else
		priv->tco_pdev = FUNC6(priv, pci_dev, tco_res);

	if (FUNC0(priv->tco_pdev))
		FUNC4(&pci_dev->dev, "failed to create iTCO device\n");
}