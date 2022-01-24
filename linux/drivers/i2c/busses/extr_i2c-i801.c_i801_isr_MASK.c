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
typedef  int u8 ;
typedef  int u16 ;
struct i801_priv {int features; int status; int /*<<< orphan*/  waitq; int /*<<< orphan*/  pci_dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FEATURE_HOST_NOTIFY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBHSTSTS_BYTE_DONE ; 
 int SMBHSTSTS_INTR ; 
 int /*<<< orphan*/  SMBPCISTS ; 
 int SMBPCISTS_INTS ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int SMBSLVSTS_HST_NTFY_STS ; 
 int STATUS_ERROR_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct i801_priv*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct i801_priv *priv = dev_id;
	u16 pcists;
	u8 status;

	/* Confirm this is our interrupt */
	FUNC6(priv->pci_dev, SMBPCISTS, &pcists);
	if (!(pcists & SMBPCISTS_INTS))
		return IRQ_NONE;

	if (priv->features & FEATURE_HOST_NOTIFY) {
		status = FUNC4(FUNC1(priv));
		if (status & SMBSLVSTS_HST_NTFY_STS)
			return FUNC2(priv);
	}

	status = FUNC4(FUNC0(priv));
	if (status & SMBHSTSTS_BYTE_DONE)
		FUNC3(priv);

	/*
	 * Clear irq sources and report transaction result.
	 * ->status must be cleared before the next transaction is started.
	 */
	status &= SMBHSTSTS_INTR | STATUS_ERROR_FLAGS;
	if (status) {
		FUNC5(status, FUNC0(priv));
		priv->status = status;
		FUNC7(&priv->waitq);
	}

	return IRQ_HANDLED;
}