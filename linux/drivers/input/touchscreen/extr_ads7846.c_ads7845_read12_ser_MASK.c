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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;
struct ads7846 {int /*<<< orphan*/  lock; } ;
struct ads7845_ser_req {int /*<<< orphan*/ * sample; int /*<<< orphan*/  msg; TYPE_1__* xfer; scalar_t__* command; } ;
struct TYPE_2__ {int len; int /*<<< orphan*/ * rx_buf; scalar_t__* tx_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC1 (struct ads7846*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ads7846* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ads7845_ser_req*) ; 
 struct ads7845_ser_req* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct spi_device* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct device *dev, unsigned command)
{
	struct spi_device *spi = FUNC11(dev);
	struct ads7846 *ts = FUNC3(dev);
	struct ads7845_ser_req *req;
	int status;

	req = FUNC5(sizeof *req, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	FUNC9(&req->msg);

	req->command[0] = (u8) command;
	req->xfer[0].tx_buf = req->command;
	req->xfer[0].rx_buf = req->sample;
	req->xfer[0].len = 3;
	FUNC8(&req->xfer[0], &req->msg);

	FUNC6(&ts->lock);
	FUNC1(ts);
	status = FUNC10(spi, &req->msg);
	FUNC0(ts);
	FUNC7(&ts->lock);

	if (status == 0) {
		/* BE12 value, then padding */
		status = FUNC2(*((u16 *)&req->sample[1]));
		status = status >> 3;
		status &= 0x0fff;
	}

	FUNC4(req);
	return status;
}