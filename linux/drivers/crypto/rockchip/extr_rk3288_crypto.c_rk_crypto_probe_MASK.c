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
struct rk_crypto_info {int irq; int busy; int /*<<< orphan*/  done_task; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  enqueue; int /*<<< orphan*/  unload_data; int /*<<< orphan*/  load_data; int /*<<< orphan*/  disable_clk; int /*<<< orphan*/  enable_clk; int /*<<< orphan*/  queue; struct device* dev; void* dmaclk; void* sclk; void* hclk; void* aclk; void* reg; int /*<<< orphan*/  lock; void* rst; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,struct rk_crypto_info*) ; 
 void* FUNC7 (struct device*,char*) ; 
 struct rk_crypto_info* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct platform_device*) ; 
 void* FUNC11 (struct device*,char*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct rk_crypto_info*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  rk_crypto_action ; 
 int /*<<< orphan*/  rk_crypto_disable_clk ; 
 int /*<<< orphan*/  rk_crypto_done_task_cb ; 
 int /*<<< orphan*/  rk_crypto_enable_clk ; 
 int /*<<< orphan*/  rk_crypto_enqueue ; 
 int /*<<< orphan*/  rk_crypto_irq_handle ; 
 int /*<<< orphan*/  rk_crypto_queue_task_cb ; 
 int FUNC16 (struct rk_crypto_info*) ; 
 int /*<<< orphan*/  rk_load_data ; 
 int /*<<< orphan*/  rk_unload_data ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rk_crypto_info *crypto_info;
	int err = 0;

	crypto_info = FUNC8(&pdev->dev,
				   sizeof(*crypto_info), GFP_KERNEL);
	if (!crypto_info) {
		err = -ENOMEM;
		goto err_crypto;
	}

	crypto_info->rst = FUNC11(dev, "crypto-rst");
	if (FUNC0(crypto_info->rst)) {
		err = FUNC1(crypto_info->rst);
		goto err_crypto;
	}

	FUNC14(crypto_info->rst);
	FUNC20(10, 20);
	FUNC15(crypto_info->rst);

	err = FUNC6(dev, rk_crypto_action, crypto_info);
	if (err)
		goto err_crypto;

	FUNC17(&crypto_info->lock);

	crypto_info->reg = FUNC9(pdev, 0);
	if (FUNC0(crypto_info->reg)) {
		err = FUNC1(crypto_info->reg);
		goto err_crypto;
	}

	crypto_info->aclk = FUNC7(&pdev->dev, "aclk");
	if (FUNC0(crypto_info->aclk)) {
		err = FUNC1(crypto_info->aclk);
		goto err_crypto;
	}

	crypto_info->hclk = FUNC7(&pdev->dev, "hclk");
	if (FUNC0(crypto_info->hclk)) {
		err = FUNC1(crypto_info->hclk);
		goto err_crypto;
	}

	crypto_info->sclk = FUNC7(&pdev->dev, "sclk");
	if (FUNC0(crypto_info->sclk)) {
		err = FUNC1(crypto_info->sclk);
		goto err_crypto;
	}

	crypto_info->dmaclk = FUNC7(&pdev->dev, "apb_pclk");
	if (FUNC0(crypto_info->dmaclk)) {
		err = FUNC1(crypto_info->dmaclk);
		goto err_crypto;
	}

	crypto_info->irq = FUNC12(pdev, 0);
	if (crypto_info->irq < 0) {
		FUNC5(crypto_info->dev,
			 "control Interrupt is not available.\n");
		err = crypto_info->irq;
		goto err_crypto;
	}

	err = FUNC10(&pdev->dev, crypto_info->irq,
			       rk_crypto_irq_handle, IRQF_SHARED,
			       "rk-crypto", pdev);

	if (err) {
		FUNC3(crypto_info->dev, "irq request failed.\n");
		goto err_crypto;
	}

	crypto_info->dev = &pdev->dev;
	FUNC13(pdev, crypto_info);

	FUNC18(&crypto_info->queue_task,
		     rk_crypto_queue_task_cb, (unsigned long)crypto_info);
	FUNC18(&crypto_info->done_task,
		     rk_crypto_done_task_cb, (unsigned long)crypto_info);
	FUNC2(&crypto_info->queue, 50);

	crypto_info->enable_clk = rk_crypto_enable_clk;
	crypto_info->disable_clk = rk_crypto_disable_clk;
	crypto_info->load_data = rk_load_data;
	crypto_info->unload_data = rk_unload_data;
	crypto_info->enqueue = rk_crypto_enqueue;
	crypto_info->busy = false;

	err = FUNC16(crypto_info);
	if (err) {
		FUNC3(dev, "err in register alg");
		goto err_register_alg;
	}

	FUNC4(dev, "Crypto Accelerator successfully registered\n");
	return 0;

err_register_alg:
	FUNC19(&crypto_info->queue_task);
	FUNC19(&crypto_info->done_task);
err_crypto:
	return err;
}