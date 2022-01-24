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
struct qce_device {void* core; void* iface; void* bus; int /*<<< orphan*/  dma; int /*<<< orphan*/  async_req_done; int /*<<< orphan*/  async_req_enqueue; int /*<<< orphan*/  queue; int /*<<< orphan*/  done_tasklet; int /*<<< orphan*/  lock; struct device* dev; void* base; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  QCE_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,char*) ; 
 struct qce_device* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct qce_device*) ; 
 int /*<<< orphan*/  qce_async_request_done ; 
 int /*<<< orphan*/  qce_async_request_enqueue ; 
 int FUNC11 (struct qce_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct qce_device*) ; 
 int /*<<< orphan*/  qce_tasklet_req_done ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct qce_device *qce;
	int ret;

	qce = FUNC7(dev, sizeof(*qce), GFP_KERNEL);
	if (!qce)
		return -ENOMEM;

	qce->dev = dev;
	FUNC10(pdev, qce);

	qce->base = FUNC8(pdev, 0);
	if (FUNC1(qce->base))
		return FUNC2(qce->base);

	ret = FUNC9(dev, FUNC0(32));
	if (ret < 0)
		return ret;

	qce->core = FUNC6(qce->dev, "core");
	if (FUNC1(qce->core))
		return FUNC2(qce->core);

	qce->iface = FUNC6(qce->dev, "iface");
	if (FUNC1(qce->iface))
		return FUNC2(qce->iface);

	qce->bus = FUNC6(qce->dev, "bus");
	if (FUNC1(qce->bus))
		return FUNC2(qce->bus);

	ret = FUNC4(qce->core);
	if (ret)
		return ret;

	ret = FUNC4(qce->iface);
	if (ret)
		goto err_clks_core;

	ret = FUNC4(qce->bus);
	if (ret)
		goto err_clks_iface;

	ret = FUNC13(qce->dev, &qce->dma);
	if (ret)
		goto err_clks;

	ret = FUNC11(qce);
	if (ret)
		goto err_clks;

	FUNC15(&qce->lock);
	FUNC16(&qce->done_tasklet, qce_tasklet_req_done,
		     (unsigned long)qce);
	FUNC5(&qce->queue, QCE_QUEUE_LENGTH);

	qce->async_req_enqueue = qce_async_request_enqueue;
	qce->async_req_done = qce_async_request_done;

	ret = FUNC14(qce);
	if (ret)
		goto err_dma;

	return 0;

err_dma:
	FUNC12(&qce->dma);
err_clks:
	FUNC3(qce->bus);
err_clks_iface:
	FUNC3(qce->iface);
err_clks_core:
	FUNC3(qce->core);
	return ret;
}