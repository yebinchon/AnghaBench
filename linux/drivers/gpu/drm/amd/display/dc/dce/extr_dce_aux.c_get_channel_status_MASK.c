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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct dce_aux {int dummy; } ;
struct aux_engine_dce110 {int timeout_period; } ;
typedef  enum aux_channel_operation_result { ____Placeholder_aux_channel_operation_result } aux_channel_operation_result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AUX_CHANNEL_OPERATION_FAILED_HPD_DISCON ; 
 int AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY ; 
 int AUX_CHANNEL_OPERATION_FAILED_REASON_UNKNOWN ; 
 int AUX_CHANNEL_OPERATION_FAILED_TIMEOUT ; 
 int AUX_CHANNEL_OPERATION_SUCCEEDED ; 
 int /*<<< orphan*/  AUX_SW_DONE ; 
 int /*<<< orphan*/  AUX_SW_REPLY_BYTE_COUNT ; 
 int /*<<< orphan*/  AUX_SW_STATUS ; 
 int AUX_SW_STATUS__AUX_SW_DONE_MASK ; 
 int AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK ; 
 int AUX_SW_STATUS__AUX_SW_RX_INVALID_STOP_MASK ; 
 int AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_H_MASK ; 
 int AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_L_MASK ; 
 int AUX_SW_STATUS__AUX_SW_RX_RECV_NO_DET_MASK ; 
 int AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_MASK ; 
 int AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_STATE_MASK ; 
 struct aux_engine_dce110* FUNC1 (struct dce_aux*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum aux_channel_operation_result FUNC5(
	struct dce_aux *engine,
	uint8_t *returned_bytes)
{
	struct aux_engine_dce110 *aux110 = FUNC1(engine);

	uint32_t value;

	if (returned_bytes == NULL) {
		/*caller pass NULL pointer*/
		FUNC0(false);
		return AUX_CHANNEL_OPERATION_FAILED_REASON_UNKNOWN;
	}
	*returned_bytes = 0;

	/* poll to make sure that SW_DONE is asserted */
	FUNC3(AUX_SW_STATUS, AUX_SW_DONE, 1,
				10, aux110->timeout_period/10);

	value = FUNC2(AUX_SW_STATUS);
	/* in case HPD is LOW, exit AUX transaction */
	if ((value & AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK))
		return AUX_CHANNEL_OPERATION_FAILED_HPD_DISCON;

	/* Note that the following bits are set in 'status.bits'
	 * during CTS 4.2.1.2 (FW 3.3.1):
	 * AUX_SW_RX_MIN_COUNT_VIOL, AUX_SW_RX_INVALID_STOP,
	 * AUX_SW_RX_RECV_NO_DET, AUX_SW_RX_RECV_INVALID_H.
	 *
	 * AUX_SW_RX_MIN_COUNT_VIOL is an internal,
	 * HW debugging bit and should be ignored.
	 */
	if (value & AUX_SW_STATUS__AUX_SW_DONE_MASK) {
		if ((value & AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_STATE_MASK) ||
			(value & AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_MASK))
			return AUX_CHANNEL_OPERATION_FAILED_TIMEOUT;

		else if ((value & AUX_SW_STATUS__AUX_SW_RX_INVALID_STOP_MASK) ||
			(value & AUX_SW_STATUS__AUX_SW_RX_RECV_NO_DET_MASK) ||
			(value &
				AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_H_MASK) ||
			(value & AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_L_MASK))
			return AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY;

		*returned_bytes = FUNC4(value,
				AUX_SW_STATUS,
				AUX_SW_REPLY_BYTE_COUNT);

		if (*returned_bytes == 0)
			return
			AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY;
		else {
			*returned_bytes -= 1;
			return AUX_CHANNEL_OPERATION_SUCCEEDED;
		}
	} else {
		/*time_elapsed >= aux_engine->timeout_period
		 *  AUX_SW_STATUS__AUX_SW_HPD_DISCON = at this point
		 */
		FUNC0(false);
		return AUX_CHANNEL_OPERATION_FAILED_TIMEOUT;
	}
}