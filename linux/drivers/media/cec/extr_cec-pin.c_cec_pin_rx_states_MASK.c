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
typedef  int u8 ;
struct TYPE_2__ {int* msg; int len; void* rx_ts; } ;
struct cec_pin {int state; void* ts; int tx_generated_poll; int rx_eom; int rx_bit; int la_mask; int /*<<< orphan*/  kthread_waitq; TYPE_1__ work_rx_msg; TYPE_1__ rx_msg; int /*<<< orphan*/  rx_low_drive_cnt; void* rx_data_bit_too_short_delta; void* rx_data_bit_too_short_ts; int /*<<< orphan*/  rx_data_bit_too_short_cnt; int /*<<< orphan*/  rx_data_bit_too_long_cnt; void* rx_start_bit_too_short_delta; void* rx_start_bit_too_short_ts; int /*<<< orphan*/  rx_start_bit_too_short_cnt; int /*<<< orphan*/  rx_start_bit_too_long_cnt; int /*<<< orphan*/  tx_extra_bytes; int /*<<< orphan*/  tx_msg; void* rx_start_bit_low_too_short_delta; void* rx_start_bit_low_too_short_ts; int /*<<< orphan*/  rx_start_bit_low_too_short_cnt; } ;
typedef  void* s32 ;
typedef  void* ktime_t ;

/* Variables and functions */
#define  ACK_BIT 138 
 int CEC_LOG_ADDR_BROADCAST ; 
 int CEC_MAX_MSG_SIZE ; 
#define  CEC_ST_RX_ACK_FINISH 137 
#define  CEC_ST_RX_ACK_HIGH_POST 136 
#define  CEC_ST_RX_ACK_LOW 135 
#define  CEC_ST_RX_ACK_LOW_POST 134 
#define  CEC_ST_RX_DATA_POST_SAMPLE 133 
#define  CEC_ST_RX_DATA_SAMPLE 132 
#define  CEC_ST_RX_DATA_WAIT_FOR_LOW 131 
 void* CEC_ST_RX_LOW_DRIVE ; 
#define  CEC_ST_RX_START_BIT_HIGH 130 
#define  CEC_ST_RX_START_BIT_LOW 129 
 int CEC_ST_TX_START_BIT_HIGH ; 
 void* CEC_TIM_DATA_BIT_TOTAL_LONG ; 
 void* CEC_TIM_DATA_BIT_TOTAL_MIN ; 
 void* CEC_TIM_IDLE_SAMPLE ; 
 void* CEC_TIM_START_BIT_LOW_MIN ; 
 void* CEC_TIM_START_BIT_TOTAL_LONG ; 
 void* CEC_TIM_START_BIT_TOTAL_MIN ; 
#define  EOM_BIT 128 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC3 (struct cec_pin*) ; 
 int FUNC4 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC5 (struct cec_pin*) ; 
 void* FUNC6 (void*) ; 
 void* FUNC7 (void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct cec_pin*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC10 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct cec_pin *pin, ktime_t ts)
{
	s32 delta;
	bool v;
	bool ack;
	bool bcast, for_us;
	u8 dest;
	u8 poll;

	switch (pin->state) {
	/* Receive states */
	case CEC_ST_RX_START_BIT_LOW:
		v = FUNC4(pin);
		if (!v)
			break;
		pin->state = CEC_ST_RX_START_BIT_HIGH;
		delta = FUNC7(ts, pin->ts);
		/* Start bit low is too short, go back to idle */
		if (delta < CEC_TIM_START_BIT_LOW_MIN - CEC_TIM_IDLE_SAMPLE) {
			if (!pin->rx_start_bit_low_too_short_cnt++) {
				pin->rx_start_bit_low_too_short_ts = FUNC6(pin->ts);
				pin->rx_start_bit_low_too_short_delta = delta;
			}
			FUNC5(pin);
			break;
		}
		if (FUNC8(pin, &poll)) {
			FUNC1(&pin->tx_msg, poll >> 4, poll & 0xf);
			pin->tx_generated_poll = true;
			pin->tx_extra_bytes = 0;
			pin->state = CEC_ST_TX_START_BIT_HIGH;
			pin->ts = ts;
		}
		break;

	case CEC_ST_RX_START_BIT_HIGH:
		v = FUNC4(pin);
		delta = FUNC7(ts, pin->ts);
		/*
		 * Unfortunately the spec does not specify when to give up
		 * and go to idle. We just pick TOTAL_LONG.
		 */
		if (v && delta > CEC_TIM_START_BIT_TOTAL_LONG) {
			pin->rx_start_bit_too_long_cnt++;
			FUNC5(pin);
			break;
		}
		if (v)
			break;
		/* Start bit is too short, go back to idle */
		if (delta < CEC_TIM_START_BIT_TOTAL_MIN - CEC_TIM_IDLE_SAMPLE) {
			if (!pin->rx_start_bit_too_short_cnt++) {
				pin->rx_start_bit_too_short_ts = FUNC6(pin->ts);
				pin->rx_start_bit_too_short_delta = delta;
			}
			FUNC5(pin);
			break;
		}
		if (FUNC9(pin)) {
			/* Error injection: go to low drive */
			FUNC3(pin);
			pin->state = CEC_ST_RX_LOW_DRIVE;
			pin->rx_low_drive_cnt++;
			break;
		}
		pin->state = CEC_ST_RX_DATA_SAMPLE;
		pin->ts = ts;
		pin->rx_eom = false;
		break;

	case CEC_ST_RX_DATA_SAMPLE:
		v = FUNC4(pin);
		pin->state = CEC_ST_RX_DATA_POST_SAMPLE;
		switch (pin->rx_bit % 10) {
		default:
			if (pin->rx_bit / 10 < CEC_MAX_MSG_SIZE)
				pin->rx_msg.msg[pin->rx_bit / 10] |=
					v << (7 - (pin->rx_bit % 10));
			break;
		case EOM_BIT:
			pin->rx_eom = v;
			pin->rx_msg.len = pin->rx_bit / 10 + 1;
			break;
		case ACK_BIT:
			break;
		}
		pin->rx_bit++;
		break;

	case CEC_ST_RX_DATA_POST_SAMPLE:
		pin->state = CEC_ST_RX_DATA_WAIT_FOR_LOW;
		break;

	case CEC_ST_RX_DATA_WAIT_FOR_LOW:
		v = FUNC4(pin);
		delta = FUNC7(ts, pin->ts);
		/*
		 * Unfortunately the spec does not specify when to give up
		 * and go to idle. We just pick TOTAL_LONG.
		 */
		if (v && delta > CEC_TIM_DATA_BIT_TOTAL_LONG) {
			pin->rx_data_bit_too_long_cnt++;
			FUNC5(pin);
			break;
		}
		if (v)
			break;

		if (FUNC9(pin)) {
			/* Error injection: go to low drive */
			FUNC3(pin);
			pin->state = CEC_ST_RX_LOW_DRIVE;
			pin->rx_low_drive_cnt++;
			break;
		}

		/*
		 * Go to low drive state when the total bit time is
		 * too short.
		 */
		if (delta < CEC_TIM_DATA_BIT_TOTAL_MIN) {
			if (!pin->rx_data_bit_too_short_cnt++) {
				pin->rx_data_bit_too_short_ts = FUNC6(pin->ts);
				pin->rx_data_bit_too_short_delta = delta;
			}
			FUNC3(pin);
			pin->state = CEC_ST_RX_LOW_DRIVE;
			pin->rx_low_drive_cnt++;
			break;
		}
		pin->ts = ts;
		if (pin->rx_bit % 10 != 9) {
			pin->state = CEC_ST_RX_DATA_SAMPLE;
			break;
		}

		dest = FUNC0(&pin->rx_msg);
		bcast = dest == CEC_LOG_ADDR_BROADCAST;
		/* for_us == broadcast or directed to us */
		for_us = bcast || (pin->la_mask & (1 << dest));
		/* ACK bit value */
		ack = bcast ? 1 : !for_us;

		if (for_us && FUNC10(pin)) {
			/* Error injection: toggle the ACK bit */
			ack = !ack;
		}

		if (ack) {
			/* No need to write to the bus, just wait */
			pin->state = CEC_ST_RX_ACK_HIGH_POST;
			break;
		}
		FUNC3(pin);
		pin->state = CEC_ST_RX_ACK_LOW;
		break;

	case CEC_ST_RX_ACK_LOW:
		FUNC2(pin);
		pin->state = CEC_ST_RX_ACK_LOW_POST;
		break;

	case CEC_ST_RX_ACK_LOW_POST:
	case CEC_ST_RX_ACK_HIGH_POST:
		v = FUNC4(pin);
		if (v && pin->rx_eom) {
			pin->work_rx_msg = pin->rx_msg;
			pin->work_rx_msg.rx_ts = FUNC6(ts);
			FUNC11(&pin->kthread_waitq);
			pin->ts = ts;
			pin->state = CEC_ST_RX_ACK_FINISH;
			break;
		}
		pin->rx_bit++;
		pin->state = CEC_ST_RX_DATA_WAIT_FOR_LOW;
		break;

	case CEC_ST_RX_ACK_FINISH:
		FUNC5(pin);
		break;

	default:
		break;
	}
}