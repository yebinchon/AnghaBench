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
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; void** tx_buf; scalar_t__ delay_usecs; } ;
struct spi_message {struct ads7846* context; } ;
struct ads7846_platform_data {int keep_vref_on; scalar_t__ settle_delay_usecs; } ;
struct TYPE_2__ {int /*<<< orphan*/  z2; int /*<<< orphan*/  z1; int /*<<< orphan*/  x; int /*<<< orphan*/ * x_buf; int /*<<< orphan*/  y; int /*<<< orphan*/ * y_buf; } ;
struct ads7846_packet {int /*<<< orphan*/  dummy; void* pwrdown; void** pwrdown_cmd; TYPE_1__ tc; void* read_z2; void* read_z1; void* read_x; void** read_x_cmd; void* read_y; void** read_y_cmd; } ;
struct ads7846 {int model; int msg_count; struct ads7846_packet* packet; struct spi_transfer* xfer; struct spi_message* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer) ; 
 void* PWRDOWN ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 

__attribute__((used)) static void FUNC7(struct ads7846 *ts,
				  const struct ads7846_platform_data *pdata)
{
	struct spi_message *m = &ts->msg[0];
	struct spi_transfer *x = ts->xfer;
	struct ads7846_packet *packet = ts->packet;
	int vref = pdata->keep_vref_on;

	if (ts->model == 7873) {
		/*
		 * The AD7873 is almost identical to the ADS7846
		 * keep VREF off during differential/ratiometric
		 * conversion modes.
		 */
		ts->model = 7846;
		vref = 0;
	}

	ts->msg_count = 1;
	FUNC6(m);
	m->context = ts;

	if (ts->model == 7845) {
		packet->read_y_cmd[0] = FUNC2(vref);
		packet->read_y_cmd[1] = 0;
		packet->read_y_cmd[2] = 0;
		x->tx_buf = &packet->read_y_cmd[0];
		x->rx_buf = &packet->tc.y_buf[0];
		x->len = 3;
		FUNC5(x, m);
	} else {
		/* y- still on; turn on only y+ (and ADC) */
		packet->read_y = FUNC2(vref);
		x->tx_buf = &packet->read_y;
		x->len = 1;
		FUNC5(x, m);

		x++;
		x->rx_buf = &packet->tc.y;
		x->len = 2;
		FUNC5(x, m);
	}

	/*
	 * The first sample after switching drivers can be low quality;
	 * optionally discard it, using a second one after the signals
	 * have had enough time to stabilize.
	 */
	if (pdata->settle_delay_usecs) {
		x->delay_usecs = pdata->settle_delay_usecs;

		x++;
		x->tx_buf = &packet->read_y;
		x->len = 1;
		FUNC5(x, m);

		x++;
		x->rx_buf = &packet->tc.y;
		x->len = 2;
		FUNC5(x, m);
	}

	ts->msg_count++;
	m++;
	FUNC6(m);
	m->context = ts;

	if (ts->model == 7845) {
		x++;
		packet->read_x_cmd[0] = FUNC1(vref);
		packet->read_x_cmd[1] = 0;
		packet->read_x_cmd[2] = 0;
		x->tx_buf = &packet->read_x_cmd[0];
		x->rx_buf = &packet->tc.x_buf[0];
		x->len = 3;
		FUNC5(x, m);
	} else {
		/* turn y- off, x+ on, then leave in lowpower */
		x++;
		packet->read_x = FUNC1(vref);
		x->tx_buf = &packet->read_x;
		x->len = 1;
		FUNC5(x, m);

		x++;
		x->rx_buf = &packet->tc.x;
		x->len = 2;
		FUNC5(x, m);
	}

	/* ... maybe discard first sample ... */
	if (pdata->settle_delay_usecs) {
		x->delay_usecs = pdata->settle_delay_usecs;

		x++;
		x->tx_buf = &packet->read_x;
		x->len = 1;
		FUNC5(x, m);

		x++;
		x->rx_buf = &packet->tc.x;
		x->len = 2;
		FUNC5(x, m);
	}

	/* turn y+ off, x- on; we'll use formula #2 */
	if (ts->model == 7846) {
		ts->msg_count++;
		m++;
		FUNC6(m);
		m->context = ts;

		x++;
		packet->read_z1 = FUNC3(vref);
		x->tx_buf = &packet->read_z1;
		x->len = 1;
		FUNC5(x, m);

		x++;
		x->rx_buf = &packet->tc.z1;
		x->len = 2;
		FUNC5(x, m);

		/* ... maybe discard first sample ... */
		if (pdata->settle_delay_usecs) {
			x->delay_usecs = pdata->settle_delay_usecs;

			x++;
			x->tx_buf = &packet->read_z1;
			x->len = 1;
			FUNC5(x, m);

			x++;
			x->rx_buf = &packet->tc.z1;
			x->len = 2;
			FUNC5(x, m);
		}

		ts->msg_count++;
		m++;
		FUNC6(m);
		m->context = ts;

		x++;
		packet->read_z2 = FUNC4(vref);
		x->tx_buf = &packet->read_z2;
		x->len = 1;
		FUNC5(x, m);

		x++;
		x->rx_buf = &packet->tc.z2;
		x->len = 2;
		FUNC5(x, m);

		/* ... maybe discard first sample ... */
		if (pdata->settle_delay_usecs) {
			x->delay_usecs = pdata->settle_delay_usecs;

			x++;
			x->tx_buf = &packet->read_z2;
			x->len = 1;
			FUNC5(x, m);

			x++;
			x->rx_buf = &packet->tc.z2;
			x->len = 2;
			FUNC5(x, m);
		}
	}

	/* power down */
	ts->msg_count++;
	m++;
	FUNC6(m);
	m->context = ts;

	if (ts->model == 7845) {
		x++;
		packet->pwrdown_cmd[0] = PWRDOWN;
		packet->pwrdown_cmd[1] = 0;
		packet->pwrdown_cmd[2] = 0;
		x->tx_buf = &packet->pwrdown_cmd[0];
		x->len = 3;
	} else {
		x++;
		packet->pwrdown = PWRDOWN;
		x->tx_buf = &packet->pwrdown;
		x->len = 1;
		FUNC5(x, m);

		x++;
		x->rx_buf = &packet->dummy;
		x->len = 2;
	}

	FUNC0(*x);
	FUNC5(x, m);
}