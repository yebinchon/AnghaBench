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
struct i2c_client {int dummy; } ;
struct eeprom_data {int buffer_idx; int* buffer; size_t address_mask; int /*<<< orphan*/  idx_write_cnt; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  read_only; int /*<<< orphan*/  num_address_bytes; } ;
typedef  enum i2c_slave_event { ____Placeholder_i2c_slave_event } i2c_slave_event ;

/* Variables and functions */
#define  I2C_SLAVE_READ_PROCESSED 132 
#define  I2C_SLAVE_READ_REQUESTED 131 
#define  I2C_SLAVE_STOP 130 
#define  I2C_SLAVE_WRITE_RECEIVED 129 
#define  I2C_SLAVE_WRITE_REQUESTED 128 
 struct eeprom_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
				     enum i2c_slave_event event, u8 *val)
{
	struct eeprom_data *eeprom = FUNC0(client);

	switch (event) {
	case I2C_SLAVE_WRITE_RECEIVED:
		if (eeprom->idx_write_cnt < eeprom->num_address_bytes) {
			if (eeprom->idx_write_cnt == 0)
				eeprom->buffer_idx = 0;
			eeprom->buffer_idx = *val | (eeprom->buffer_idx << 8);
			eeprom->idx_write_cnt++;
		} else {
			if (!eeprom->read_only) {
				FUNC1(&eeprom->buffer_lock);
				eeprom->buffer[eeprom->buffer_idx++ & eeprom->address_mask] = *val;
				FUNC2(&eeprom->buffer_lock);
			}
		}
		break;

	case I2C_SLAVE_READ_PROCESSED:
		/* The previous byte made it to the bus, get next one */
		eeprom->buffer_idx++;
		/* fallthrough */
	case I2C_SLAVE_READ_REQUESTED:
		FUNC1(&eeprom->buffer_lock);
		*val = eeprom->buffer[eeprom->buffer_idx & eeprom->address_mask];
		FUNC2(&eeprom->buffer_lock);
		/*
		 * Do not increment buffer_idx here, because we don't know if
		 * this byte will be actually used. Read Linux I2C slave docs
		 * for details.
		 */
		break;

	case I2C_SLAVE_STOP:
	case I2C_SLAVE_WRITE_REQUESTED:
		eeprom->idx_write_cnt = 0;
		break;

	default:
		break;
	}

	return 0;
}