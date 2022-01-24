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
typedef  scalar_t__ u32 ;
struct sbefifo {int broken; TYPE_1__* fsi_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SBEFIFO_REQ_RESET ; 
 scalar_t__ SBEFIFO_RESET_TIMEOUT ; 
 int SBEFIFO_STS ; 
 scalar_t__ SBEFIFO_STS_RESET_REQ ; 
 int SBEFIFO_UP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct sbefifo*,int,scalar_t__*) ; 
 int FUNC4 (struct sbefifo*,int,int) ; 

__attribute__((used)) static int FUNC5(struct sbefifo *sbefifo)
{
	struct device *dev = &sbefifo->fsi_dev->dev;
	u32 status, timeout;
	int rc;

	FUNC0(dev, "Requesting FIFO reset\n");

	/* Mark broken first, will be cleared if reset succeeds */
	sbefifo->broken = true;

	/* Send reset request */
	rc = FUNC4(sbefifo, SBEFIFO_UP | SBEFIFO_REQ_RESET, 1);
	if (rc) {
		FUNC1(dev, "Sending reset request failed, rc=%d\n", rc);
		return rc;
	}

	/* Wait for it to complete */
	for (timeout = 0; timeout < SBEFIFO_RESET_TIMEOUT; timeout++) {
		rc = FUNC3(sbefifo, SBEFIFO_UP | SBEFIFO_STS, &status);
		if (rc) {
			FUNC1(dev, "Failed to read UP fifo status during reset"
				" , rc=%d\n", rc);
			return rc;
		}

		if (!(status & SBEFIFO_STS_RESET_REQ)) {
			FUNC0(dev, "FIFO reset done\n");
			sbefifo->broken = false;
			return 0;
		}

		FUNC2(1);
	}
	FUNC1(dev, "FIFO reset timed out\n");

	return -ETIMEDOUT;
}