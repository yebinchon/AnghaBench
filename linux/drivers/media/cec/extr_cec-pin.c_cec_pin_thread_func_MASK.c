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
struct cec_msg {int len; int* msg; int /*<<< orphan*/  rx_ts; } ;
struct cec_pin {int work_tx_status; unsigned int work_pin_events_rd; int* work_pin_events; int enable_irq_failed; int /*<<< orphan*/  timer; TYPE_1__* ops; int /*<<< orphan*/  work_irq_change; int /*<<< orphan*/  work_pin_num_events; int /*<<< orphan*/ * work_pin_ts; int /*<<< orphan*/  work_tx_ts; struct cec_msg work_rx_msg; int /*<<< orphan*/  kthread_waitq; } ;
struct cec_adapter {struct cec_pin* pin; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_irq ) (struct cec_adapter*) ;int /*<<< orphan*/  (* disable_irq ) (struct cec_adapter*) ;} ;

/* Variables and functions */
 int CEC_MAX_MSG_SIZE ; 
 unsigned int CEC_NUM_PIN_EVENTS ; 
 int CEC_PIN_EVENT_FL_DROPPED ; 
 int CEC_PIN_EVENT_FL_IS_HIGH ; 
#define  CEC_PIN_IRQ_DISABLE 129 
#define  CEC_PIN_IRQ_ENABLE 128 
 int /*<<< orphan*/  CEC_PIN_IRQ_UNCHANGED ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC4 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC5 (struct cec_adapter*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cec_adapter*,struct cec_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cec_adapter*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct cec_pin*) ; 
 scalar_t__ FUNC12 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC13 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(void *_adap)
{
	struct cec_adapter *adap = _adap;
	struct cec_pin *pin = adap->pin;

	for (;;) {
		FUNC15(pin->kthread_waitq,
			FUNC9() ||
			pin->work_rx_msg.len ||
			pin->work_tx_status ||
			FUNC1(&pin->work_irq_change) ||
			FUNC1(&pin->work_pin_num_events));

		if (pin->work_rx_msg.len) {
			struct cec_msg *msg = &pin->work_rx_msg;

			if (msg->len > 1 && msg->len < CEC_MAX_MSG_SIZE &&
			    FUNC11(pin)) {
				/* Error injection: add byte to the message */
				msg->msg[msg->len++] = 0x55;
			}
			if (msg->len > 2 && FUNC12(pin)) {
				/* Error injection: remove byte from message */
				msg->len--;
			}
			if (msg->len > CEC_MAX_MSG_SIZE)
				msg->len = CEC_MAX_MSG_SIZE;
			FUNC6(adap, msg,
				FUNC10(pin->work_rx_msg.rx_ts));
			msg->len = 0;
		}
		if (pin->work_tx_status) {
			unsigned int tx_status = pin->work_tx_status;

			pin->work_tx_status = 0;
			FUNC7(adap, tx_status,
						     pin->work_tx_ts);
		}

		while (FUNC1(&pin->work_pin_num_events)) {
			unsigned int idx = pin->work_pin_events_rd;
			u8 v = pin->work_pin_events[idx];

			FUNC5(adap,
						v & CEC_PIN_EVENT_FL_IS_HIGH,
						v & CEC_PIN_EVENT_FL_DROPPED,
						pin->work_pin_ts[idx]);
			pin->work_pin_events_rd = (idx + 1) % CEC_NUM_PIN_EVENTS;
			FUNC0(&pin->work_pin_num_events);
		}

		switch (FUNC2(&pin->work_irq_change,
				    CEC_PIN_IRQ_UNCHANGED)) {
		case CEC_PIN_IRQ_DISABLE:
			pin->ops->disable_irq(adap);
			FUNC3(pin);
			FUNC4(pin);
			FUNC8(&pin->timer, FUNC10(0),
				      HRTIMER_MODE_REL);
			break;
		case CEC_PIN_IRQ_ENABLE:
			pin->enable_irq_failed = !pin->ops->enable_irq(adap);
			if (pin->enable_irq_failed) {
				FUNC4(pin);
				FUNC8(&pin->timer, FUNC10(0),
					      HRTIMER_MODE_REL);
			}
			break;
		default:
			break;
		}

		if (FUNC9())
			break;
	}
	return 0;
}