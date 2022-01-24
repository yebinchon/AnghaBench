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
struct TYPE_3__ {scalar_t__ len; } ;
struct cec_pin {int enabled; int work_pin_events_dropped; int /*<<< orphan*/  state; int /*<<< orphan*/  kthread; int /*<<< orphan*/  timer; TYPE_2__* ops; int /*<<< orphan*/  work_irq_change; int /*<<< orphan*/  timer_ts; TYPE_1__ tx_msg; scalar_t__ work_pin_events_wr; scalar_t__ work_pin_events_rd; int /*<<< orphan*/  work_pin_num_events; } ;
struct cec_adapter {struct cec_pin* pin; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disable_irq ) (struct cec_adapter*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PIN_IRQ_UNCHANGED ; 
 int /*<<< orphan*/  CEC_ST_OFF ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cec_pin*) ; 
 int /*<<< orphan*/  cec_pin_thread_func ; 
 int /*<<< orphan*/  FUNC4 (struct cec_pin*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct cec_adapter*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct cec_adapter*) ; 

__attribute__((used)) static int FUNC12(struct cec_adapter *adap, bool enable)
{
	struct cec_pin *pin = adap->pin;

	pin->enabled = enable;
	if (enable) {
		FUNC2(&pin->work_pin_num_events, 0);
		pin->work_pin_events_rd = pin->work_pin_events_wr = 0;
		pin->work_pin_events_dropped = false;
		FUNC3(pin);
		FUNC4(pin);
		pin->tx_msg.len = 0;
		pin->timer_ts = FUNC9(0);
		FUNC2(&pin->work_irq_change, CEC_PIN_IRQ_UNCHANGED);
		pin->kthread = FUNC7(cec_pin_thread_func, adap,
					   "cec-pin");
		if (FUNC0(pin->kthread)) {
			FUNC10("cec-pin: kernel_thread() failed\n");
			return FUNC1(pin->kthread);
		}
		FUNC6(&pin->timer, FUNC9(0),
			      HRTIMER_MODE_REL);
	} else {
		if (pin->ops->disable_irq)
			pin->ops->disable_irq(adap);
		FUNC5(&pin->timer);
		FUNC8(pin->kthread);
		FUNC3(pin);
		FUNC4(pin);
		pin->state = CEC_ST_OFF;
	}
	return 0;
}