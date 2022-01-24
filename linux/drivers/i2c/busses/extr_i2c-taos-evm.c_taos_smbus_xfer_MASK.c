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
union i2c_smbus_data {int byte; } ;
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct taos_data {char* buffer; scalar_t__ addr; int pos; scalar_t__ state; } ;
struct serio {int dummy; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct serio* algo_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int EPROTO ; 
#define  I2C_SMBUS_BYTE 129 
#define  I2C_SMBUS_BYTE_DATA 128 
 char I2C_SMBUS_WRITE ; 
 scalar_t__ TAOS_STATE_IDLE ; 
 scalar_t__ TAOS_STATE_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct taos_data* FUNC5 (struct serio*) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC10(struct i2c_adapter *adapter, u16 addr,
			   unsigned short flags, char read_write, u8 command,
			   int size, union i2c_smbus_data *data)
{
	struct serio *serio = adapter->algo_data;
	struct taos_data *taos = FUNC5(serio);
	char *p;

	/* Encode our transaction. "@" is for the device address, "$" for the
	   SMBus command and "#" for the data. */
	p = taos->buffer;

	/* The device remembers the last used address, no need to send it
	   again if it's the same */
	if (addr != taos->addr)
		p += FUNC7(p, "@%02X", addr);

	switch (size) {
	case I2C_SMBUS_BYTE:
		if (read_write == I2C_SMBUS_WRITE)
			FUNC7(p, "$#%02X", command);
		else
			FUNC7(p, "$");
		break;
	case I2C_SMBUS_BYTE_DATA:
		if (read_write == I2C_SMBUS_WRITE)
			FUNC7(p, "$%02X#%02X", command, data->byte);
		else
			FUNC7(p, "$%02X", command);
		break;
	default:
		FUNC2(&adapter->dev, "Unsupported transaction %d\n", size);
		return -EOPNOTSUPP;
	}

	/* Send the transaction to the TAOS EVM */
	FUNC0(&adapter->dev, "Command buffer: %s\n", taos->buffer);
	for (p = taos->buffer; *p; p++)
		FUNC6(serio, *p);

	taos->addr = addr;

	/* Start the transaction and read the answer */
	taos->pos = 0;
	taos->state = TAOS_STATE_RECV;
	FUNC6(serio, read_write == I2C_SMBUS_WRITE ? '>' : '<');
	FUNC9(wq, taos->state == TAOS_STATE_IDLE,
					 FUNC4(150));
	if (taos->state != TAOS_STATE_IDLE
	 || taos->pos != 5) {
		FUNC1(&adapter->dev, "Transaction timeout (pos=%d)\n",
			taos->pos);
		return -EIO;
	}
	FUNC0(&adapter->dev, "Answer buffer: %s\n", taos->buffer);

	/* Interpret the returned string */
	p = taos->buffer + 1;
	p[3] = '\0';
	if (!FUNC8(p, "NAK"))
		return -ENODEV;

	if (read_write == I2C_SMBUS_WRITE) {
		if (!FUNC8(p, "ACK"))
			return 0;
	} else {
		if (p[0] == 'x') {
			/*
			 * Voluntarily dropping error code of kstrtou8 since all
			 * error code that it could return are invalid according
			 * to Documentation/i2c/fault-codes.rst.
			 */
			if (FUNC3(p + 1, 16, &data->byte))
				return -EPROTO;
			return 0;
		}
	}

	return -EIO;
}