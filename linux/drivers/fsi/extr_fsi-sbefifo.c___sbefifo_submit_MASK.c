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
struct sbefifo {scalar_t__ async_ffdc; scalar_t__ dead; TYPE_1__* fsi_dev; } ;
struct iov_iter {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOVERFLOW ; 
 size_t FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,size_t,size_t) ; 
 int FUNC2 (struct sbefifo*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbefifo*) ; 
 int FUNC4 (struct sbefifo*,int /*<<< orphan*/  const*,size_t,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbefifo*) ; 

__attribute__((used)) static int FUNC6(struct sbefifo *sbefifo,
			    const __be32 *command, size_t cmd_len,
			    struct iov_iter *response)
{
	struct device *dev = &sbefifo->fsi_dev->dev;
	int rc;

	if (sbefifo->dead)
		return -ENODEV;

	if (cmd_len < 2 || FUNC0(command[0]) != cmd_len) {
		FUNC1(dev, "Invalid command len %zd (header: %d)\n",
			 cmd_len, FUNC0(command[0]));
		return -EINVAL;
	}

	/* First ensure the HW is in a clean state */
	rc = FUNC2(sbefifo);
	if (rc)
		return rc;

	/* Look for async FFDC first if any */
	if (sbefifo->async_ffdc)
		FUNC3(sbefifo);

	rc = FUNC4(sbefifo, command, cmd_len, response);
	if (rc != 0 && rc != -EOVERFLOW)
		goto fail;
	return rc;
 fail:
	/*
	 * On failure, attempt a reset. Ignore the result, it will mark
	 * the fifo broken if the reset fails
	 */
        FUNC5(sbefifo);

	/* Return original error */
	return rc;
}