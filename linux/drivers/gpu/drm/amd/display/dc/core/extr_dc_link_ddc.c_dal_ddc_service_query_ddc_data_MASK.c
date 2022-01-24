#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct i2c_payloads {int dummy; } ;
struct i2c_command {int /*<<< orphan*/  number_of_payloads; int /*<<< orphan*/  speed; int /*<<< orphan*/  engine; int /*<<< orphan*/  payloads; } ;
struct ddc_service {int /*<<< orphan*/  link; TYPE_3__* ctx; } ;
struct aux_payload {int i2c_over_aux; int write; int mot; int address; int length; int /*<<< orphan*/  defer_delay; int /*<<< orphan*/ * reply; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_5__ {int /*<<< orphan*/  i2c_speed_in_khz; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDC_I2C_COMMAND_ENGINE ; 
 int DEFAULT_AUX_MAX_DATA_SIZE ; 
 int EDID_SEGMENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_payloads*,int,int,int /*<<< orphan*/ *,int) ; 
 struct i2c_payloads* FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_payloads**) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_payloads*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_payloads*) ; 
 scalar_t__ FUNC5 (struct ddc_service*) ; 
 int FUNC6 (struct ddc_service*,struct aux_payload*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,struct i2c_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct ddc_service*) ; 

bool FUNC9(
	struct ddc_service *ddc,
	uint32_t address,
	uint8_t *write_buf,
	uint32_t write_size,
	uint8_t *read_buf,
	uint32_t read_size)
{
	bool ret;
	uint32_t payload_size =
		FUNC5(ddc) ?
			DEFAULT_AUX_MAX_DATA_SIZE : EDID_SEGMENT_SIZE;

	uint32_t write_payloads =
		(write_size + payload_size - 1) / payload_size;

	uint32_t read_payloads =
		(read_size + payload_size - 1) / payload_size;

	uint32_t payloads_num = write_payloads + read_payloads;

	if (write_size > EDID_SEGMENT_SIZE || read_size > EDID_SEGMENT_SIZE)
		return false;

	/*TODO: len of payload data for i2c and aux is uint8!!!!,
	 *  but we want to read 256 over i2c!!!!*/
	if (FUNC5(ddc)) {
		struct aux_payload write_payload = {
			.i2c_over_aux = true,
			.write = true,
			.mot = true,
			.address = address,
			.length = write_size,
			.data = write_buf,
			.reply = NULL,
			.defer_delay = FUNC8(ddc),
		};

		struct aux_payload read_payload = {
			.i2c_over_aux = true,
			.write = false,
			.mot = false,
			.address = address,
			.length = read_size,
			.data = read_buf,
			.reply = NULL,
			.defer_delay = FUNC8(ddc),
		};

		ret = FUNC6(ddc, &write_payload);

		if (!ret)
			return false;

		ret = FUNC6(ddc, &read_payload);
	} else {
		struct i2c_payloads *payloads =
			FUNC1(ddc->ctx, payloads_num);

		struct i2c_command command = {
			.payloads = FUNC3(payloads),
			.number_of_payloads = 0,
			.engine = DDC_I2C_COMMAND_ENGINE,
			.speed = ddc->ctx->dc->caps.i2c_speed_in_khz };

		FUNC0(
			payloads, address, write_size, write_buf, true);

		FUNC0(
			payloads, address, read_size, read_buf, false);

		command.number_of_payloads =
			FUNC4(payloads);

		ret = FUNC7(
				ddc->ctx,
				ddc->link,
				&command);

		FUNC2(&payloads);
	}

	return ret;
}