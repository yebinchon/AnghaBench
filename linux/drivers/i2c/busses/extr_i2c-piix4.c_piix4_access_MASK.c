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
union i2c_smbus_data {int byte; int word; int* block; } ;
typedef  int u8 ;
typedef  int u16 ;
struct i2c_piix4_adapdata {unsigned short smba; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENABLE_INT9 ; 
 int EOPNOTSUPP ; 
 int EPROTO ; 
#define  I2C_SMBUS_BLOCK_DATA 136 
 int I2C_SMBUS_BLOCK_MAX ; 
#define  I2C_SMBUS_BYTE 135 
#define  I2C_SMBUS_BYTE_DATA 134 
#define  I2C_SMBUS_QUICK 133 
#define  I2C_SMBUS_WORD_DATA 132 
 char I2C_SMBUS_WRITE ; 
#define  PIIX4_BLOCK_DATA 131 
#define  PIIX4_BYTE 130 
#define  PIIX4_BYTE_DATA 129 
 int PIIX4_QUICK ; 
#define  PIIX4_WORD_DATA 128 
 int /*<<< orphan*/  SMBBLKDAT ; 
 int /*<<< orphan*/  SMBHSTADD ; 
 int /*<<< orphan*/  SMBHSTCMD ; 
 int /*<<< orphan*/  SMBHSTCNT ; 
 int /*<<< orphan*/  SMBHSTDAT0 ; 
 int /*<<< orphan*/  SMBHSTDAT1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct i2c_piix4_adapdata* FUNC1 (struct i2c_adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_adapter*) ; 

__attribute__((used)) static s32 FUNC5(struct i2c_adapter * adap, u16 addr,
		 unsigned short flags, char read_write,
		 u8 command, int size, union i2c_smbus_data * data)
{
	struct i2c_piix4_adapdata *adapdata = FUNC1(adap);
	unsigned short piix4_smba = adapdata->smba;
	int i, len;
	int status;

	switch (size) {
	case I2C_SMBUS_QUICK:
		FUNC3((addr << 1) | read_write,
		       SMBHSTADD);
		size = PIIX4_QUICK;
		break;
	case I2C_SMBUS_BYTE:
		FUNC3((addr << 1) | read_write,
		       SMBHSTADD);
		if (read_write == I2C_SMBUS_WRITE)
			FUNC3(command, SMBHSTCMD);
		size = PIIX4_BYTE;
		break;
	case I2C_SMBUS_BYTE_DATA:
		FUNC3((addr << 1) | read_write,
		       SMBHSTADD);
		FUNC3(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE)
			FUNC3(data->byte, SMBHSTDAT0);
		size = PIIX4_BYTE_DATA;
		break;
	case I2C_SMBUS_WORD_DATA:
		FUNC3((addr << 1) | read_write,
		       SMBHSTADD);
		FUNC3(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			FUNC3(data->word & 0xff, SMBHSTDAT0);
			FUNC3((data->word & 0xff00) >> 8, SMBHSTDAT1);
		}
		size = PIIX4_WORD_DATA;
		break;
	case I2C_SMBUS_BLOCK_DATA:
		FUNC3((addr << 1) | read_write,
		       SMBHSTADD);
		FUNC3(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			len = data->block[0];
			if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
				return -EINVAL;
			FUNC3(len, SMBHSTDAT0);
			FUNC2(SMBHSTCNT);	/* Reset SMBBLKDAT */
			for (i = 1; i <= len; i++)
				FUNC3(data->block[i], SMBBLKDAT);
		}
		size = PIIX4_BLOCK_DATA;
		break;
	default:
		FUNC0(&adap->dev, "Unsupported transaction %d\n", size);
		return -EOPNOTSUPP;
	}

	FUNC3((size & 0x1C) + (ENABLE_INT9 & 1), SMBHSTCNT);

	status = FUNC4(adap);
	if (status)
		return status;

	if ((read_write == I2C_SMBUS_WRITE) || (size == PIIX4_QUICK))
		return 0;


	switch (size) {
	case PIIX4_BYTE:
	case PIIX4_BYTE_DATA:
		data->byte = FUNC2(SMBHSTDAT0);
		break;
	case PIIX4_WORD_DATA:
		data->word = FUNC2(SMBHSTDAT0) + (FUNC2(SMBHSTDAT1) << 8);
		break;
	case PIIX4_BLOCK_DATA:
		data->block[0] = FUNC2(SMBHSTDAT0);
		if (data->block[0] == 0 || data->block[0] > I2C_SMBUS_BLOCK_MAX)
			return -EPROTO;
		FUNC2(SMBHSTCNT);	/* Reset SMBBLKDAT */
		for (i = 1; i <= data->block[0]; i++)
			data->block[i] = FUNC2(SMBBLKDAT);
		break;
	}
	return 0;
}