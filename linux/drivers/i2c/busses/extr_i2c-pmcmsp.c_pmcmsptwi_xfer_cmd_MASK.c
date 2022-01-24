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
typedef  int u64 ;
struct pmcmsptwi_data {int /*<<< orphan*/  lock; scalar_t__ iobase; } ;
struct pmcmsptwi_cmd {int addr; scalar_t__ type; int write_len; int read_len; int* read_data; scalar_t__ write_data; } ;
typedef  enum pmcmsptwi_xfer_result { ____Placeholder_pmcmsptwi_xfer_result } pmcmsptwi_xfer_result ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MSP_MAX_BYTES_PER_RW ; 
 scalar_t__ MSP_TWI_ADD_REG_OFFSET ; 
 scalar_t__ MSP_TWI_CMD_READ ; 
 scalar_t__ MSP_TWI_CMD_WRITE ; 
 scalar_t__ MSP_TWI_CMD_WRITE_READ ; 
 scalar_t__ MSP_TWI_DAT_0_REG_OFFSET ; 
 scalar_t__ MSP_TWI_DAT_1_REG_OFFSET ; 
 int MSP_TWI_XFER_OK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pmcmsptwi_adapter ; 
 int /*<<< orphan*/  FUNC4 (struct pmcmsptwi_cmd*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct pmcmsptwi_data*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static enum pmcmsptwi_xfer_result FUNC8(
			struct pmcmsptwi_cmd *cmd,
			struct pmcmsptwi_data *data)
{
	enum pmcmsptwi_xfer_result retval;

	FUNC2(&data->lock);
	FUNC1(&pmcmsptwi_adapter.dev,
		"Setting address to 0x%04x\n", cmd->addr);
	FUNC7(cmd->addr, data->iobase + MSP_TWI_ADD_REG_OFFSET);

	if (cmd->type == MSP_TWI_CMD_WRITE ||
	    cmd->type == MSP_TWI_CMD_WRITE_READ) {
		u64 tmp = FUNC0((__be64 *)cmd->write_data);
		tmp >>= (MSP_MAX_BYTES_PER_RW - cmd->write_len) * 8;
		FUNC1(&pmcmsptwi_adapter.dev, "Writing 0x%016llx\n", tmp);
		FUNC7(tmp & 0x00000000ffffffffLL,
				data->iobase + MSP_TWI_DAT_0_REG_OFFSET);
		if (cmd->write_len > 4)
			FUNC7(tmp >> 32,
				data->iobase + MSP_TWI_DAT_1_REG_OFFSET);
	}

	retval = FUNC5(FUNC4(cmd), data);
	if (retval != MSP_TWI_XFER_OK)
		goto xfer_err;

	if (cmd->type == MSP_TWI_CMD_READ ||
	    cmd->type == MSP_TWI_CMD_WRITE_READ) {
		int i;
		u64 rmsk = ~(0xffffffffffffffffLL << (cmd->read_len * 8));
		u64 tmp = (u64)FUNC6(data->iobase +
					MSP_TWI_DAT_0_REG_OFFSET);
		if (cmd->read_len > 4)
			tmp |= (u64)FUNC6(data->iobase +
					MSP_TWI_DAT_1_REG_OFFSET) << 32;
		tmp &= rmsk;
		FUNC1(&pmcmsptwi_adapter.dev, "Read 0x%016llx\n", tmp);

		for (i = 0; i < cmd->read_len; i++)
			cmd->read_data[i] = tmp >> i;
	}

xfer_err:
	FUNC3(&data->lock);

	return retval;
}