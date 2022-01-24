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
struct p2wi {scalar_t__ slave_addr; int status; scalar_t__ regs; int /*<<< orphan*/  complete; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENXIO ; 
 char I2C_SMBUS_READ ; 
 scalar_t__ P2WI_CTRL ; 
 int P2WI_CTRL_GLOBAL_INT_ENB ; 
 int P2WI_CTRL_START_TRANS ; 
 scalar_t__ P2WI_DADDR0 ; 
 scalar_t__ P2WI_DATA0 ; 
 scalar_t__ P2WI_DLEN ; 
 unsigned long FUNC0 (int) ; 
 unsigned long P2WI_DLEN_READ ; 
 scalar_t__ P2WI_INTE ; 
 int P2WI_INTS_LOAD_BSY ; 
 int P2WI_INTS_TRANS_ERR ; 
 int P2WI_INTS_TRANS_OVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct p2wi* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap, u16 addr,
			   unsigned short flags, char read_write,
			   u8 command, int size, union i2c_smbus_data *data)
{
	struct p2wi *p2wi = FUNC2(adap);
	unsigned long dlen = FUNC0(1);

	if (p2wi->slave_addr >= 0 && addr != p2wi->slave_addr) {
		FUNC1(&adap->dev, "invalid P2WI address\n");
		return -EINVAL;
	}

	if (!data)
		return -EINVAL;

	FUNC6(command, p2wi->regs + P2WI_DADDR0);

	if (read_write == I2C_SMBUS_READ)
		dlen |= P2WI_DLEN_READ;
	else
		FUNC6(data->byte, p2wi->regs + P2WI_DATA0);

	FUNC6(dlen, p2wi->regs + P2WI_DLEN);

	if (FUNC3(p2wi->regs + P2WI_CTRL) & P2WI_CTRL_START_TRANS) {
		FUNC1(&adap->dev, "P2WI bus busy\n");
		return -EBUSY;
	}

	FUNC4(&p2wi->complete);

	FUNC6(P2WI_INTS_LOAD_BSY | P2WI_INTS_TRANS_ERR | P2WI_INTS_TRANS_OVER,
	       p2wi->regs + P2WI_INTE);

	FUNC6(P2WI_CTRL_START_TRANS | P2WI_CTRL_GLOBAL_INT_ENB,
	       p2wi->regs + P2WI_CTRL);

	FUNC5(&p2wi->complete);

	if (p2wi->status & P2WI_INTS_LOAD_BSY) {
		FUNC1(&adap->dev, "P2WI bus busy\n");
		return -EBUSY;
	}

	if (p2wi->status & P2WI_INTS_TRANS_ERR) {
		FUNC1(&adap->dev, "P2WI bus xfer error\n");
		return -ENXIO;
	}

	if (read_write == I2C_SMBUS_READ)
		data->byte = FUNC3(p2wi->regs + P2WI_DATA0);

	return 0;
}