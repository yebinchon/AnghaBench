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
union i2c_smbus_data {int byte; int word; int* block; } ;
typedef  int u8 ;
typedef  int u16 ;
struct i2c_adapter {int dummy; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FEATURE_I2CBLOCK ; 
#define  I2C_SMBUS_BLOCK_DATA 140 
 int I2C_SMBUS_BLOCK_MAX ; 
#define  I2C_SMBUS_BYTE 139 
#define  I2C_SMBUS_BYTE_DATA 138 
#define  I2C_SMBUS_I2C_BLOCK_DATA 137 
#define  I2C_SMBUS_PROC_CALL 136 
#define  I2C_SMBUS_QUICK 135 
 char I2C_SMBUS_READ ; 
#define  I2C_SMBUS_WORD_DATA 134 
 char I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  SMBBLKDAT ; 
 int /*<<< orphan*/  SMBHSTADD ; 
 int /*<<< orphan*/  SMBHSTCMD ; 
 int /*<<< orphan*/  SMBHSTCNT ; 
 int /*<<< orphan*/  SMBHSTDAT0 ; 
 int /*<<< orphan*/  SMBHSTDAT1 ; 
#define  VT596_BLOCK_DATA 133 
#define  VT596_BYTE 132 
#define  VT596_BYTE_DATA 131 
#define  VT596_I2C_BLOCK_DATA 130 
#define  VT596_PROC_CALL 129 
 int VT596_QUICK ; 
#define  VT596_WORD_DATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ vt596_adapter ; 
 int vt596_features ; 
 int FUNC3 (int) ; 

__attribute__((used)) static s32 FUNC4(struct i2c_adapter *adap, u16 addr,
		unsigned short flags, char read_write, u8 command,
		int size, union i2c_smbus_data *data)
{
	int i;
	int status;

	switch (size) {
	case I2C_SMBUS_QUICK:
		size = VT596_QUICK;
		break;
	case I2C_SMBUS_BYTE:
		if (read_write == I2C_SMBUS_WRITE)
			FUNC2(command, SMBHSTCMD);
		size = VT596_BYTE;
		break;
	case I2C_SMBUS_BYTE_DATA:
		FUNC2(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE)
			FUNC2(data->byte, SMBHSTDAT0);
		size = VT596_BYTE_DATA;
		break;
	case I2C_SMBUS_WORD_DATA:
		FUNC2(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			FUNC2(data->word & 0xff, SMBHSTDAT0);
			FUNC2((data->word & 0xff00) >> 8, SMBHSTDAT1);
		}
		size = VT596_WORD_DATA;
		break;
	case I2C_SMBUS_PROC_CALL:
		FUNC2(command, SMBHSTCMD);
		FUNC2(data->word & 0xff, SMBHSTDAT0);
		FUNC2((data->word & 0xff00) >> 8, SMBHSTDAT1);
		size = VT596_PROC_CALL;
		break;
	case I2C_SMBUS_I2C_BLOCK_DATA:
		if (!(vt596_features & FEATURE_I2CBLOCK))
			goto exit_unsupported;
		if (read_write == I2C_SMBUS_READ)
			FUNC2(data->block[0], SMBHSTDAT0);
		/* Fall through */
	case I2C_SMBUS_BLOCK_DATA:
		FUNC2(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			u8 len = data->block[0];
			if (len > I2C_SMBUS_BLOCK_MAX)
				len = I2C_SMBUS_BLOCK_MAX;
			FUNC2(len, SMBHSTDAT0);
			FUNC1(SMBHSTCNT);	/* Reset SMBBLKDAT */
			for (i = 1; i <= len; i++)
				FUNC2(data->block[i], SMBBLKDAT);
		}
		size = (size == I2C_SMBUS_I2C_BLOCK_DATA) ?
		       VT596_I2C_BLOCK_DATA : VT596_BLOCK_DATA;
		break;
	default:
		goto exit_unsupported;
	}

	FUNC2(((addr & 0x7f) << 1) | read_write, SMBHSTADD);

	status = FUNC3(size);
	if (status)
		return status;

	if (size == VT596_PROC_CALL)
		read_write = I2C_SMBUS_READ;

	if ((read_write == I2C_SMBUS_WRITE) || (size == VT596_QUICK))
		return 0;

	switch (size) {
	case VT596_BYTE:
	case VT596_BYTE_DATA:
		data->byte = FUNC1(SMBHSTDAT0);
		break;
	case VT596_WORD_DATA:
	case VT596_PROC_CALL:
		data->word = FUNC1(SMBHSTDAT0) + (FUNC1(SMBHSTDAT1) << 8);
		break;
	case VT596_I2C_BLOCK_DATA:
	case VT596_BLOCK_DATA:
		data->block[0] = FUNC1(SMBHSTDAT0);
		if (data->block[0] > I2C_SMBUS_BLOCK_MAX)
			data->block[0] = I2C_SMBUS_BLOCK_MAX;
		FUNC1(SMBHSTCNT);	/* Reset SMBBLKDAT */
		for (i = 1; i <= data->block[0]; i++)
			data->block[i] = FUNC1(SMBBLKDAT);
		break;
	}
	return 0;

exit_unsupported:
	FUNC0(&vt596_adapter.dev, "Unsupported transaction %d\n",
		 size);
	return -EOPNOTSUPP;
}