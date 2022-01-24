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
struct i801_priv {int features; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int FEATURE_SMBUS_PEC ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBAUXSTS_CRCE ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int STATUS_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i801_priv *priv)
{
	int status;

	status = FUNC4(FUNC1(priv));
	if (status & SMBHSTSTS_HOST_BUSY) {
		FUNC3(&priv->pci_dev->dev, "SMBus is busy, can't use it!\n");
		return -EBUSY;
	}

	status &= STATUS_FLAGS;
	if (status) {
		FUNC2(&priv->pci_dev->dev, "Clearing status flags (%02x)\n",
			status);
		FUNC5(status, FUNC1(priv));
		status = FUNC4(FUNC1(priv)) & STATUS_FLAGS;
		if (status) {
			FUNC3(&priv->pci_dev->dev,
				"Failed clearing status flags (%02x)\n",
				status);
			return -EBUSY;
		}
	}

	/*
	 * Clear CRC status if needed.
	 * During normal operation, i801_check_post() takes care
	 * of it after every operation.  We do it here only in case
	 * the hardware was already in this state when the driver
	 * started.
	 */
	if (priv->features & FEATURE_SMBUS_PEC) {
		status = FUNC4(FUNC0(priv)) & SMBAUXSTS_CRCE;
		if (status) {
			FUNC2(&priv->pci_dev->dev,
				"Clearing aux status flags (%02x)\n", status);
			FUNC5(status, FUNC0(priv));
			status = FUNC4(FUNC0(priv)) & SMBAUXSTS_CRCE;
			if (status) {
				FUNC3(&priv->pci_dev->dev,
					"Failed clearing aux status flags (%02x)\n",
					status);
				return -EBUSY;
			}
		}
	}

	return 0;
}