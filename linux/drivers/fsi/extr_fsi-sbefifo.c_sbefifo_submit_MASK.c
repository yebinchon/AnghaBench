#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sbefifo {scalar_t__ magic; int /*<<< orphan*/  lock; } ;
struct kvec {size_t iov_len; int /*<<< orphan*/ * iov_base; } ;
struct iov_iter {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ SBEFIFO_MAGIC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC1 (struct sbefifo*,int /*<<< orphan*/  const*,size_t,struct iov_iter*) ; 
 struct sbefifo* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct device *dev, const __be32 *command, size_t cmd_len,
		   __be32 *response, size_t *resp_len)
{
	struct sbefifo *sbefifo;
        struct iov_iter resp_iter;
        struct kvec resp_iov;
	size_t rbytes;
	int rc;

	if (!dev)
		return -ENODEV;
	sbefifo = FUNC2(dev);
	if (!sbefifo)
		return -ENODEV;
	if (FUNC0(sbefifo->magic != SBEFIFO_MAGIC))
		return -ENODEV;
	if (!resp_len || !command || !response)
		return -EINVAL;

	/* Prepare iov iterator */
	rbytes = (*resp_len) * sizeof(__be32);
	resp_iov.iov_base = response;
	resp_iov.iov_len = rbytes;
        FUNC4(&resp_iter, WRITE, &resp_iov, 1, rbytes);

	/* Perform the command */
	FUNC5(&sbefifo->lock);
	rc = FUNC1(sbefifo, command, cmd_len, &resp_iter);
	FUNC6(&sbefifo->lock);

	/* Extract the response length */
	rbytes -= FUNC3(&resp_iter);
	*resp_len = rbytes / sizeof(__be32);

	return rc;
}