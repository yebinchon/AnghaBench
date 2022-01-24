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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct cht_wc_i2c_adap {int irq_mask; int read_data; int io_error; int done; int /*<<< orphan*/  client_irq; int /*<<< orphan*/  wait; int /*<<< orphan*/  adap_lock; TYPE_1__ adapter; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_EXTCHGRIRQ ; 
 int CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK ; 
 int CHT_WC_EXTCHGRIRQ_CLIENT_IRQ ; 
 int CHT_WC_EXTCHGRIRQ_NACK_IRQ ; 
 int /*<<< orphan*/  CHT_WC_I2C_RDDATA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int id, void *data)
{
	struct cht_wc_i2c_adap *adap = data;
	int ret, reg;

	FUNC4(&adap->adap_lock);

	/* Read IRQs */
	ret = FUNC6(adap->regmap, CHT_WC_EXTCHGRIRQ, &reg);
	if (ret) {
		FUNC0(&adap->adapter.dev, "Error reading extchgrirq reg\n");
		FUNC5(&adap->adap_lock);
		return IRQ_NONE;
	}

	reg &= ~adap->irq_mask;

	/* Reads must be acked after reading the received data. */
	ret = FUNC6(adap->regmap, CHT_WC_I2C_RDDATA, &adap->read_data);
	if (ret)
		adap->io_error = true;

	/*
	 * Immediately ack IRQs, so that if new IRQs arrives while we're
	 * handling the previous ones our irq will re-trigger when we're done.
	 */
	ret = FUNC7(adap->regmap, CHT_WC_EXTCHGRIRQ, reg);
	if (ret)
		FUNC0(&adap->adapter.dev, "Error writing extchgrirq reg\n");

	if (reg & CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK) {
		adap->io_error |= !!(reg & CHT_WC_EXTCHGRIRQ_NACK_IRQ);
		adap->done = true;
	}

	FUNC5(&adap->adap_lock);

	if (reg & CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK)
		FUNC8(&adap->wait);

	/*
	 * Do NOT use handle_nested_irq here, the client irq handler will
	 * likely want to do i2c transfers and the i2c controller uses this
	 * interrupt handler as well, so running the client irq handler from
	 * this thread will cause things to lock up.
	 */
	if (reg & CHT_WC_EXTCHGRIRQ_CLIENT_IRQ) {
		/*
		 * generic_handle_irq expects local IRQs to be disabled
		 * as normally it is called from interrupt context.
		 */
		FUNC2();
		FUNC1(adap->client_irq);
		FUNC3();
	}

	return IRQ_HANDLED;
}