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
union i2c_smbus_data {int* block; } ;
struct i801_priv {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EPROTO ; 
#define  I2C_SMBUS_BLOCK_DATA 129 
 int I2C_SMBUS_BLOCK_MAX ; 
#define  I2C_SMBUS_BLOCK_PROC_CALL 128 
 char I2C_SMBUS_READ ; 
 char I2C_SMBUS_WRITE ; 
 int I801_BLOCK_DATA ; 
 int I801_BLOCK_PROC_CALL ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int SMBHSTCNT_PEC_EN ; 
 int /*<<< orphan*/  FUNC2 (struct i801_priv*) ; 
 int FUNC3 (struct i801_priv*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i801_priv *priv,
					   union i2c_smbus_data *data,
					   char read_write, int command,
					   int hwpec)
{
	int i, len;
	int status;
	int xact = hwpec ? SMBHSTCNT_PEC_EN : 0;

	switch (command) {
	case I2C_SMBUS_BLOCK_PROC_CALL:
		xact |= I801_BLOCK_PROC_CALL;
		break;
	case I2C_SMBUS_BLOCK_DATA:
		xact |= I801_BLOCK_DATA;
		break;
	default:
		return -EOPNOTSUPP;
	}

	FUNC4(FUNC1(priv)); /* reset the data buffer index */

	/* Use 32-byte buffer to process this transaction */
	if (read_write == I2C_SMBUS_WRITE) {
		len = data->block[0];
		FUNC5(len, FUNC2(priv));
		for (i = 0; i < len; i++)
			FUNC5(data->block[i+1], FUNC0(priv));
	}

	status = FUNC3(priv, xact);
	if (status)
		return status;

	if (read_write == I2C_SMBUS_READ ||
	    command == I2C_SMBUS_BLOCK_PROC_CALL) {
		len = FUNC4(FUNC2(priv));
		if (len < 1 || len > I2C_SMBUS_BLOCK_MAX)
			return -EPROTO;

		data->block[0] = len;
		for (i = 0; i < len; i++)
			data->block[i + 1] = FUNC4(FUNC0(priv));
	}
	return 0;
}