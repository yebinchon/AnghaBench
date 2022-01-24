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
typedef  int u32 ;
struct cec_pin_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct cec_pin {struct cec_adapter* adap; void* tx_custom_high_usecs; void* tx_custom_low_usecs; int /*<<< orphan*/  kthread_waitq; TYPE_1__ timer; struct cec_pin_ops const* ops; } ;
struct cec_adapter {struct cec_pin* pin; } ;

/* Variables and functions */
 int CEC_CAP_MONITOR_ALL ; 
 int CEC_CAP_MONITOR_PIN ; 
 int /*<<< orphan*/  CEC_MAX_LOG_ADDRS ; 
 void* CEC_TIM_CUSTOM_DEFAULT ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cec_adapter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 scalar_t__ FUNC1 (struct cec_adapter*) ; 
 struct cec_adapter* FUNC2 (int /*<<< orphan*/ *,void*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cec_pin_adap_ops ; 
 int /*<<< orphan*/  FUNC3 (struct cec_pin*) ; 
 int /*<<< orphan*/  cec_pin_timer ; 
 int /*<<< orphan*/  FUNC4 (struct cec_pin*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cec_pin*) ; 
 struct cec_pin* FUNC8 (int,int /*<<< orphan*/ ) ; 

struct cec_adapter *FUNC9(const struct cec_pin_ops *pin_ops,
					void *priv, const char *name, u32 caps)
{
	struct cec_adapter *adap;
	struct cec_pin *pin = FUNC8(sizeof(*pin), GFP_KERNEL);

	if (pin == NULL)
		return FUNC0(-ENOMEM);
	pin->ops = pin_ops;
	FUNC5(&pin->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	pin->timer.function = cec_pin_timer;
	FUNC6(&pin->kthread_waitq);
	pin->tx_custom_low_usecs = CEC_TIM_CUSTOM_DEFAULT;
	pin->tx_custom_high_usecs = CEC_TIM_CUSTOM_DEFAULT;

	adap = FUNC2(&cec_pin_adap_ops, priv, name,
			    caps | CEC_CAP_MONITOR_ALL | CEC_CAP_MONITOR_PIN,
			    CEC_MAX_LOG_ADDRS);

	if (FUNC1(adap)) {
		FUNC7(pin);
		return adap;
	}

	adap->pin = pin;
	pin->adap = adap;
	FUNC4(pin, FUNC3(pin), true);
	return adap;
}