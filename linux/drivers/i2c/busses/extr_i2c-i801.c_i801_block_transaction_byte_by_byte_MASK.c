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
union i2c_smbus_data {int* block; } ;
struct i2c_adapter {int /*<<< orphan*/  timeout; } ;
struct i801_priv {int features; int is_read; int cmd; int len; int* data; int status; TYPE_1__* pci_dev; int /*<<< orphan*/  waitq; scalar_t__ count; struct i2c_adapter adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
 int FEATURE_IRQ ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int I2C_SMBUS_BLOCK_PROC_CALL ; 
 int I2C_SMBUS_I2C_BLOCK_DATA ; 
 char I2C_SMBUS_READ ; 
 char I2C_SMBUS_WRITE ; 
 int I801_BLOCK_DATA ; 
 int I801_I2C_BLOCK_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int SMBHSTCNT_INTREN ; 
 int SMBHSTCNT_LAST_BYTE ; 
 int SMBHSTCNT_START ; 
 int /*<<< orphan*/  FUNC2 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct i801_priv*) ; 
 int SMBHSTSTS_BYTE_DONE ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int SMBHSTSTS_INTR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct i801_priv*,int) ; 
 int FUNC7 (struct i801_priv*) ; 
 int FUNC8 (struct i801_priv*) ; 
 int FUNC9 (struct i801_priv*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i801_priv *priv,
					       union i2c_smbus_data *data,
					       char read_write, int command,
					       int hwpec)
{
	int i, len;
	int smbcmd;
	int status;
	int result;
	const struct i2c_adapter *adap = &priv->adapter;

	if (command == I2C_SMBUS_BLOCK_PROC_CALL)
		return -EOPNOTSUPP;

	result = FUNC7(priv);
	if (result < 0)
		return result;

	len = data->block[0];

	if (read_write == I2C_SMBUS_WRITE) {
		FUNC12(len, FUNC2(priv));
		FUNC12(data->block[1], FUNC0(priv));
	}

	if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
	    read_write == I2C_SMBUS_READ)
		smbcmd = I801_I2C_BLOCK_DATA;
	else
		smbcmd = I801_BLOCK_DATA;

	if (priv->features & FEATURE_IRQ) {
		priv->is_read = (read_write == I2C_SMBUS_READ);
		if (len == 1 && priv->is_read)
			smbcmd |= SMBHSTCNT_LAST_BYTE;
		priv->cmd = smbcmd | SMBHSTCNT_INTREN;
		priv->len = len;
		priv->count = 0;
		priv->data = &data->block[1];

		FUNC12(priv->cmd | SMBHSTCNT_START, FUNC1(priv));
		result = FUNC13(priv->waitq,
					    (status = priv->status),
					    adap->timeout);
		if (!result) {
			status = -ETIMEDOUT;
			FUNC5(&priv->pci_dev->dev,
				 "Timeout waiting for interrupt!\n");
		}
		priv->status = 0;
		return FUNC6(priv, status);
	}

	for (i = 1; i <= len; i++) {
		if (i == len && read_write == I2C_SMBUS_READ)
			smbcmd |= SMBHSTCNT_LAST_BYTE;
		FUNC12(smbcmd, FUNC1(priv));

		if (i == 1)
			FUNC12(FUNC10(FUNC1(priv)) | SMBHSTCNT_START,
			       FUNC1(priv));

		status = FUNC8(priv);
		if (status)
			goto exit;

		if (i == 1 && read_write == I2C_SMBUS_READ
		 && command != I2C_SMBUS_I2C_BLOCK_DATA) {
			len = FUNC11(FUNC2(priv));
			if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
				FUNC4(&priv->pci_dev->dev,
					"Illegal SMBus block read size %d\n",
					len);
				/* Recover */
				while (FUNC11(FUNC3(priv)) &
				       SMBHSTSTS_HOST_BUSY)
					FUNC12(SMBHSTSTS_BYTE_DONE,
					       FUNC3(priv));
				FUNC12(SMBHSTSTS_INTR, FUNC3(priv));
				return -EPROTO;
			}
			data->block[0] = len;
		}

		/* Retrieve/store value in SMBBLKDAT */
		if (read_write == I2C_SMBUS_READ)
			data->block[i] = FUNC11(FUNC0(priv));
		if (read_write == I2C_SMBUS_WRITE && i+1 <= len)
			FUNC12(data->block[i+1], FUNC0(priv));

		/* signals SMBBLKDAT ready */
		FUNC12(SMBHSTSTS_BYTE_DONE, FUNC3(priv));
	}

	status = FUNC9(priv);
exit:
	return FUNC6(priv, status);
}