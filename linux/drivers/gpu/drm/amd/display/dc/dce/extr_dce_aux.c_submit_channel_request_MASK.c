#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct dce_aux {TYPE_2__* ddc; } ;
struct aux_request_transaction_data {scalar_t__ type; scalar_t__ action; size_t length; size_t* data; int /*<<< orphan*/  address; int /*<<< orphan*/  delay; } ;
struct aux_engine_dce110 {int timeout_period; } ;
struct TYPE_4__ {TYPE_1__* pin_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  en; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUXN_CALOUT_ERROR_AK ; 
 int /*<<< orphan*/  AUXN_IMPCAL ; 
 int /*<<< orphan*/  AUXN_IMPCAL_ENABLE ; 
 int /*<<< orphan*/  AUXN_IMPCAL_OVERRIDE_ENABLE ; 
 int /*<<< orphan*/  AUXP_CALOUT_ERROR_AK ; 
 int /*<<< orphan*/  AUXP_IMPCAL ; 
 int /*<<< orphan*/  AUXP_IMPCAL_OVERRIDE_ENABLE ; 
 int /*<<< orphan*/  AUX_INTERRUPT_CONTROL ; 
 int /*<<< orphan*/  AUX_SW_AUTOINCREMENT_DISABLE ; 
 int /*<<< orphan*/  AUX_SW_CONTROL ; 
 int /*<<< orphan*/  AUX_SW_DATA ; 
 int /*<<< orphan*/  AUX_SW_DATA_RW ; 
 int /*<<< orphan*/  AUX_SW_DONE ; 
 int /*<<< orphan*/  AUX_SW_DONE_ACK ; 
 int /*<<< orphan*/  AUX_SW_GO ; 
 int /*<<< orphan*/  AUX_SW_INDEX ; 
 int /*<<< orphan*/  AUX_SW_START_DELAY ; 
 int /*<<< orphan*/  AUX_SW_STATUS ; 
 int /*<<< orphan*/  AUX_SW_WR_BYTES ; 
 scalar_t__ AUX_TRANSACTION_TYPE_DP ; 
 scalar_t__ AUX_TRANSACTION_TYPE_I2C ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENT_LOG_AUX_ORIGIN_NATIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,size_t,size_t*) ; 
 struct aux_engine_dce110* FUNC4 (struct dce_aux*) ; 
 scalar_t__ I2CAUX_TRANSACTION_ACTION_DP_WRITE ; 
 scalar_t__ I2CAUX_TRANSACTION_ACTION_I2C_WRITE ; 
 scalar_t__ I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC13(
	struct dce_aux *engine,
	struct aux_request_transaction_data *request)
{
	struct aux_engine_dce110 *aux110 = FUNC4(engine);
	uint32_t value;
	uint32_t length;

	bool is_write =
		((request->type == AUX_TRANSACTION_TYPE_DP) &&
		 (request->action == I2CAUX_TRANSACTION_ACTION_DP_WRITE)) ||
		((request->type == AUX_TRANSACTION_TYPE_I2C) &&
		((request->action == I2CAUX_TRANSACTION_ACTION_I2C_WRITE) ||
		 (request->action == I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT)));
	if (FUNC5(AUXN_IMPCAL)) {
		/* clear_aux_error */
		FUNC11(AUXN_IMPCAL,
				AUXN_CALOUT_ERROR_AK, 1,
				AUXN_CALOUT_ERROR_AK, 0);

		FUNC11(AUXP_IMPCAL,
				AUXP_CALOUT_ERROR_AK, 1,
				AUXP_CALOUT_ERROR_AK, 0);

		/* force_default_calibrate */
		FUNC11(AUXN_IMPCAL,
				AUXN_IMPCAL_ENABLE, 1,
				AUXN_IMPCAL_OVERRIDE_ENABLE, 0);

		/* bug? why AUXN update EN and OVERRIDE_EN 1 by 1 while AUX P toggles OVERRIDE? */

		FUNC11(AUXP_IMPCAL,
				AUXP_IMPCAL_OVERRIDE_ENABLE, 1,
				AUXP_IMPCAL_OVERRIDE_ENABLE, 0);
	}

	FUNC8(AUX_INTERRUPT_CONTROL, AUX_SW_DONE_ACK, 1);

	FUNC12(AUX_SW_STATUS, AUX_SW_DONE, 0,
				10, aux110->timeout_period/10);

	/* set the delay and the number of bytes to write */

	/* The length include
	 * the 4 bit header and the 20 bit address
	 * (that is 3 byte).
	 * If the requested length is non zero this means
	 * an addition byte specifying the length is required.
	 */

	length = request->length ? 4 : 3;
	if (is_write)
		length += request->length;

	FUNC9(AUX_SW_CONTROL,
			AUX_SW_START_DELAY, request->delay,
			AUX_SW_WR_BYTES, length);

	/* program action and address and payload data (if 'is_write') */
	value = FUNC10(AUX_SW_DATA,
			AUX_SW_INDEX, 0,
			AUX_SW_DATA_RW, 0,
			AUX_SW_AUTOINCREMENT_DISABLE, 1,
			AUX_SW_DATA, FUNC1(request->action, request->address));

	value = FUNC7(AUX_SW_DATA, value,
			AUX_SW_AUTOINCREMENT_DISABLE, 0,
			AUX_SW_DATA, FUNC2(request->address));

	value = FUNC6(AUX_SW_DATA, value,
			AUX_SW_DATA, FUNC0(request->address));

	if (request->length) {
		value = FUNC6(AUX_SW_DATA, value,
				AUX_SW_DATA, request->length - 1);
	}

	if (is_write) {
		/* Load the HW buffer with the Data to be sent.
		 * This is relevant for write operation.
		 * For read, the data recived data will be
		 * processed in process_channel_reply().
		 */
		uint32_t i = 0;

		while (i < request->length) {
			value = FUNC6(AUX_SW_DATA, value,
					AUX_SW_DATA, request->data[i]);

			++i;
		}
	}

	FUNC8(AUX_SW_CONTROL, AUX_SW_GO, 1);
	FUNC3(engine->ddc->pin_data->en, EVENT_LOG_AUX_ORIGIN_NATIVE,
					request->action, request->address, request->length, request->data);
}