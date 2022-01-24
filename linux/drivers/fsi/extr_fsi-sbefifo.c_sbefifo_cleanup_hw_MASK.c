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
struct sbefifo {int broken; TYPE_1__* fsi_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int SBEFIFO_DOWN ; 
 int /*<<< orphan*/  SBEFIFO_PERFORM_RESET ; 
 int SBEFIFO_STS ; 
 int SBEFIFO_STS_EMPTY ; 
 int SBEFIFO_STS_PARITY_ERR ; 
 int SBEFIFO_STS_RESET_REQ ; 
 int SBEFIFO_UP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct sbefifo*) ; 
 int FUNC4 (struct sbefifo*,int,int*) ; 
 int FUNC5 (struct sbefifo*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sbefifo*) ; 

__attribute__((used)) static int FUNC7(struct sbefifo *sbefifo)
{
	struct device *dev = &sbefifo->fsi_dev->dev;
	u32 up_status, down_status;
	bool need_reset = false;
	int rc;

	rc = FUNC3(sbefifo);
	if (rc) {
		FUNC0(dev, "SBE state=%d\n", rc);
		return rc;
	}

	/* If broken, we don't need to look at status, go straight to reset */
	if (sbefifo->broken)
		goto do_reset;

	rc = FUNC4(sbefifo, SBEFIFO_UP | SBEFIFO_STS, &up_status);
	if (rc) {
		FUNC1(dev, "Cleanup: Reading UP status failed, rc=%d\n", rc);

		/* Will try reset again on next attempt at using it */
		sbefifo->broken = true;
		return rc;
	}

	rc = FUNC4(sbefifo, SBEFIFO_DOWN | SBEFIFO_STS, &down_status);
	if (rc) {
		FUNC1(dev, "Cleanup: Reading DOWN status failed, rc=%d\n", rc);

		/* Will try reset again on next attempt at using it */
		sbefifo->broken = true;
		return rc;
	}

	/* The FIFO already contains a reset request from the SBE ? */
	if (down_status & SBEFIFO_STS_RESET_REQ) {
		FUNC2(dev, "Cleanup: FIFO reset request set, resetting\n");
		rc = FUNC5(sbefifo, SBEFIFO_UP, SBEFIFO_PERFORM_RESET);
		if (rc) {
			sbefifo->broken = true;
			FUNC1(dev, "Cleanup: Reset reg write failed, rc=%d\n", rc);
			return rc;
		}
		sbefifo->broken = false;
		return 0;
	}

	/* Parity error on either FIFO ? */
	if ((up_status | down_status) & SBEFIFO_STS_PARITY_ERR)
		need_reset = true;

	/* Either FIFO not empty ? */
	if (!((up_status & down_status) & SBEFIFO_STS_EMPTY))
		need_reset = true;

	if (!need_reset)
		return 0;

	FUNC2(dev, "Cleanup: FIFO not clean (up=0x%08x down=0x%08x)\n",
		 up_status, down_status);

 do_reset:

	/* Mark broken, will be cleared if/when reset succeeds */
	return FUNC6(sbefifo);
}