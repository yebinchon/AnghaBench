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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; } ;
struct efm32_i2c_ddata {size_t current_msg; size_t current_word; int num_msgs; int /*<<< orphan*/  done; struct i2c_msg* msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CMD ; 
 int /*<<< orphan*/  REG_CMD_ACK ; 
 int /*<<< orphan*/  REG_CMD_NACK ; 
 int /*<<< orphan*/  REG_CMD_STOP ; 
 int /*<<< orphan*/  REG_RXDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efm32_i2c_ddata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_i2c_ddata*) ; 
 int /*<<< orphan*/  FUNC3 (struct efm32_i2c_ddata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct efm32_i2c_ddata *ddata)
{
	struct i2c_msg *cur_msg = &ddata->msgs[ddata->current_msg];

	cur_msg->buf[ddata->current_word] = FUNC1(ddata, REG_RXDATA);
	ddata->current_word += 1;
	if (ddata->current_word >= cur_msg->len) {
		/* cur_msg completely transferred */
		ddata->current_word = 0;
		ddata->current_msg += 1;

		FUNC3(ddata, REG_CMD, REG_CMD_NACK);

		if (ddata->current_msg >= ddata->num_msgs) {
			FUNC3(ddata, REG_CMD, REG_CMD_STOP);
			FUNC0(&ddata->done);
		} else {
			FUNC2(ddata);
		}
	} else {
		FUNC3(ddata, REG_CMD, REG_CMD_ACK);
	}
}