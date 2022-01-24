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
struct qce_dma_data {void* txchan; void* rxchan; scalar_t__ result_buf; scalar_t__ ignore_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ QCE_IGNORE_BUF_SZ ; 
 scalar_t__ QCE_RESULT_BUF_SZ ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC5(struct device *dev, struct qce_dma_data *dma)
{
	int ret;

	dma->txchan = FUNC3(dev, "tx");
	if (FUNC0(dma->txchan))
		return FUNC1(dma->txchan);

	dma->rxchan = FUNC3(dev, "rx");
	if (FUNC0(dma->rxchan)) {
		ret = FUNC1(dma->rxchan);
		goto error_rx;
	}

	dma->result_buf = FUNC4(QCE_RESULT_BUF_SZ + QCE_IGNORE_BUF_SZ,
				  GFP_KERNEL);
	if (!dma->result_buf) {
		ret = -ENOMEM;
		goto error_nomem;
	}

	dma->ignore_buf = dma->result_buf + QCE_RESULT_BUF_SZ;

	return 0;
error_nomem:
	FUNC2(dma->rxchan);
error_rx:
	FUNC2(dma->txchan);
	return ret;
}