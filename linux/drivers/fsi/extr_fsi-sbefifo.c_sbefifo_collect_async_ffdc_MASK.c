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
struct sbefifo {int async_ffdc; TYPE_1__* fsi_dev; } ;
struct kvec {void* iov_len; int /*<<< orphan*/ * iov_base; } ;
struct iov_iter {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int SBEFIFO_CMD_GET_SBE_FFDC ; 
 void* SBEFIFO_MAX_FFDC_SIZE ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 void* FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,void*) ; 
 int FUNC4 (struct sbefifo*,int /*<<< orphan*/ *,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ *,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (void*) ; 

__attribute__((used)) static void FUNC9(struct sbefifo *sbefifo)
{
	struct device *dev = &sbefifo->fsi_dev->dev;
        struct iov_iter ffdc_iter;
        struct kvec ffdc_iov;
	__be32 *ffdc;
	size_t ffdc_sz;
	__be32 cmd[2];
	int rc;

	sbefifo->async_ffdc = false;
	ffdc = FUNC8(SBEFIFO_MAX_FFDC_SIZE);
	if (!ffdc) {
		FUNC1(dev, "Failed to allocate SBE FFDC buffer\n");
		return;
	}
        ffdc_iov.iov_base = ffdc;
	ffdc_iov.iov_len = SBEFIFO_MAX_FFDC_SIZE;
        FUNC3(&ffdc_iter, WRITE, &ffdc_iov, 1, SBEFIFO_MAX_FFDC_SIZE);
	cmd[0] = FUNC0(2);
	cmd[1] = FUNC0(SBEFIFO_CMD_GET_SBE_FFDC);
	rc = FUNC4(sbefifo, cmd, 2, &ffdc_iter);
	if (rc != 0) {
		FUNC1(dev, "Error %d retrieving SBE FFDC\n", rc);
		goto bail;
	}
	ffdc_sz = SBEFIFO_MAX_FFDC_SIZE - FUNC2(&ffdc_iter);
	ffdc_sz /= sizeof(__be32);
	rc = FUNC6(dev, SBEFIFO_CMD_GET_SBE_FFDC, ffdc,
				  ffdc_sz, &ffdc_sz);
	if (rc != 0) {
		FUNC1(dev, "Error %d decoding SBE FFDC\n", rc);
		goto bail;
	}
	if (ffdc_sz > 0)
		FUNC5(dev, ffdc, ffdc_sz, true);
 bail:
	FUNC7(ffdc);

}