#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct spi_device {int dummy; } ;
struct ser_req {int /*<<< orphan*/  sample; int /*<<< orphan*/  msg; TYPE_1__* xfer; int /*<<< orphan*/  scratch; scalar_t__ ref_off; scalar_t__ command; scalar_t__ ref_on; } ;
struct device {int dummy; } ;
struct ads7846 {int /*<<< orphan*/  lock; int /*<<< orphan*/  vref_delay_usecs; scalar_t__ use_internal; } ;
struct TYPE_3__ {int len; int /*<<< orphan*/ * rx_buf; scalar_t__* tx_buf; int /*<<< orphan*/  delay_usecs; } ;

/* Variables and functions */
 unsigned int ADS_PD10_ADC_ON ; 
 unsigned int ADS_PD10_REF_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PWRDOWN ; 
 scalar_t__ REF_ON ; 
 int /*<<< orphan*/  FUNC1 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC2 (struct ads7846*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct ads7846* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ser_req*) ; 
 struct ser_req* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct spi_device* FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct device *dev, unsigned command)
{
	struct spi_device *spi = FUNC12(dev);
	struct ads7846 *ts = FUNC4(dev);
	struct ser_req *req;
	int status;

	req = FUNC6(sizeof *req, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	FUNC10(&req->msg);

	/* maybe turn on internal vREF, and let it settle */
	if (ts->use_internal) {
		req->ref_on = REF_ON;
		req->xfer[0].tx_buf = &req->ref_on;
		req->xfer[0].len = 1;
		FUNC9(&req->xfer[0], &req->msg);

		req->xfer[1].rx_buf = &req->scratch;
		req->xfer[1].len = 2;

		/* for 1uF, settle for 800 usec; no cap, 100 usec.  */
		req->xfer[1].delay_usecs = ts->vref_delay_usecs;
		FUNC9(&req->xfer[1], &req->msg);

		/* Enable reference voltage */
		command |= ADS_PD10_REF_ON;
	}

	/* Enable ADC in every case */
	command |= ADS_PD10_ADC_ON;

	/* take sample */
	req->command = (u8) command;
	req->xfer[2].tx_buf = &req->command;
	req->xfer[2].len = 1;
	FUNC9(&req->xfer[2], &req->msg);

	req->xfer[3].rx_buf = &req->sample;
	req->xfer[3].len = 2;
	FUNC9(&req->xfer[3], &req->msg);

	/* REVISIT:  take a few more samples, and compare ... */

	/* converter in low power mode & enable PENIRQ */
	req->ref_off = PWRDOWN;
	req->xfer[4].tx_buf = &req->ref_off;
	req->xfer[4].len = 1;
	FUNC9(&req->xfer[4], &req->msg);

	req->xfer[5].rx_buf = &req->scratch;
	req->xfer[5].len = 2;
	FUNC0(req->xfer[5]);
	FUNC9(&req->xfer[5], &req->msg);

	FUNC7(&ts->lock);
	FUNC2(ts);
	status = FUNC11(spi, &req->msg);
	FUNC1(ts);
	FUNC8(&ts->lock);

	if (status == 0) {
		/* on-wire is a must-ignore bit, a BE12 value, then padding */
		status = FUNC3(req->sample);
		status = status >> 3;
		status &= 0x0fff;
	}

	FUNC5(req);
	return status;
}