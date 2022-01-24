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
struct iov_iter {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 int EOVERFLOW ; 
 int SBEFIFO_DOWN ; 
 int SBEFIFO_EOT_ACK ; 
 int /*<<< orphan*/  SBEFIFO_TIMEOUT_IN_RSP ; 
 int /*<<< orphan*/  SBEFIFO_TIMEOUT_START_RSP ; 
 int FUNC0 (int /*<<< orphan*/ *,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,size_t) ; 
 int FUNC4 (struct iov_iter*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sbefifo*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 size_t FUNC8 (int) ; 
 int FUNC9 (struct sbefifo*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sbefifo*,int,int*,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct sbefifo *sbefifo, struct iov_iter *response)
{
	struct device *dev = &sbefifo->fsi_dev->dev;
	u32 status, eot_set;
	unsigned long timeout;
	bool overflow = false;
	__be32 data;
	size_t len;
	int rc;

	FUNC2(dev, "reading response, buflen = %zd\n", FUNC4(response));

	timeout = FUNC5(SBEFIFO_TIMEOUT_START_RSP);
	for (;;) {
		/* Grab FIFO status (this will handle parity errors) */
		rc = FUNC10(sbefifo, false, &status, timeout);
		if (rc < 0)
			return rc;
		timeout = FUNC5(SBEFIFO_TIMEOUT_IN_RSP);

		/* Decode status */
		len = FUNC8(status);
		eot_set = FUNC7(status);

		FUNC2(dev, "  chunk size %zd eot_set=0x%x\n", len, eot_set);

		/* Go through the chunk */
		while(len--) {
			/* Read the data */
			rc = FUNC6(sbefifo, &data);
			if (rc < 0)
				return rc;

			/* Was it an EOT ? */
			if (eot_set & 0x80) {
				/*
				 * There should be nothing else in the FIFO,
				 * if there is, mark broken, this will force
				 * a reset on next use, but don't fail the
				 * command.
				 */
				if (len) {
					FUNC3(dev, "FIFO read hit"
						 " EOT with still %zd data\n",
						 len);
					sbefifo->broken = true;
				}

				/* We are done */
				rc = FUNC9(sbefifo,
						  SBEFIFO_DOWN | SBEFIFO_EOT_ACK, 0);

				/*
				 * If that write fail, still complete the request but mark
				 * the fifo as broken for subsequent reset (not much else
				 * we can do here).
				 */
				if (rc) {
					FUNC1(dev, "FSI error %d ack'ing EOT\n", rc);
					sbefifo->broken = true;
				}

				/* Tell whether we overflowed */
				return overflow ? -EOVERFLOW : 0;
			}

			/* Store it if there is room */
			if (FUNC4(response) >= sizeof(__be32)) {
				if (FUNC0(&data, sizeof(__be32), response) < sizeof(__be32))
					return -EFAULT;
			} else {
				FUNC2(dev, "Response overflowed !\n");

				overflow = true;
			}

			/* Next EOT bit */
			eot_set <<= 1;
		}
	}
	/* Shouldn't happen */
	return -EIO;
}