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
 int EAGAIN ; 
 int EBADMSG ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int FEATURE_SMBUS_PEC ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBAUXSTS_CRCE ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int SMBHSTCNT_KILL ; 
 int /*<<< orphan*/  FUNC2 (struct i801_priv*) ; 
 int SMBHSTSTS_BUS_ERR ; 
 int SMBHSTSTS_DEV_ERR ; 
 int SMBHSTSTS_FAILED ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int STATUS_FLAGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct i801_priv *priv, int status)
{
	int result = 0;

	/*
	 * If the SMBus is still busy, we give up
	 * Note: This timeout condition only happens when using polling
	 * transactions.  For interrupt operation, NAK/timeout is indicated by
	 * DEV_ERR.
	 */
	if (FUNC7(status < 0)) {
		FUNC4(&priv->pci_dev->dev, "Transaction timeout\n");
		/* try to stop the current command */
		FUNC3(&priv->pci_dev->dev, "Terminating the current operation\n");
		FUNC6(FUNC5(FUNC1(priv)) | SMBHSTCNT_KILL,
		       FUNC1(priv));
		FUNC8(1000, 2000);
		FUNC6(FUNC5(FUNC1(priv)) & (~SMBHSTCNT_KILL),
		       FUNC1(priv));

		/* Check if it worked */
		status = FUNC5(FUNC2(priv));
		if ((status & SMBHSTSTS_HOST_BUSY) ||
		    !(status & SMBHSTSTS_FAILED))
			FUNC4(&priv->pci_dev->dev,
				"Failed terminating the transaction\n");
		FUNC6(STATUS_FLAGS, FUNC2(priv));
		return -ETIMEDOUT;
	}

	if (status & SMBHSTSTS_FAILED) {
		result = -EIO;
		FUNC4(&priv->pci_dev->dev, "Transaction failed\n");
	}
	if (status & SMBHSTSTS_DEV_ERR) {
		/*
		 * This may be a PEC error, check and clear it.
		 *
		 * AUXSTS is handled differently from HSTSTS.
		 * For HSTSTS, i801_isr() or i801_wait_intr()
		 * has already cleared the error bits in hardware,
		 * and we are passed a copy of the original value
		 * in "status".
		 * For AUXSTS, the hardware register is left
		 * for us to handle here.
		 * This is asymmetric, slightly iffy, but safe,
		 * since all this code is serialized and the CRCE
		 * bit is harmless as long as it's cleared before
		 * the next operation.
		 */
		if ((priv->features & FEATURE_SMBUS_PEC) &&
		    (FUNC5(FUNC0(priv)) & SMBAUXSTS_CRCE)) {
			FUNC6(SMBAUXSTS_CRCE, FUNC0(priv));
			result = -EBADMSG;
			FUNC3(&priv->pci_dev->dev, "PEC error\n");
		} else {
			result = -ENXIO;
			FUNC3(&priv->pci_dev->dev, "No response\n");
		}
	}
	if (status & SMBHSTSTS_BUS_ERR) {
		result = -EAGAIN;
		FUNC3(&priv->pci_dev->dev, "Lost arbitration\n");
	}

	/* Clear status flags except BYTE_DONE, to be cleared by caller */
	FUNC6(status, FUNC2(priv));

	return result;
}