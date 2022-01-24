#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sahara_hw_link {int dummy; } ;
struct sahara_hw_desc {int dummy; } ;
struct sahara_dev {int version; void* clk_ipg; void* clk_ahb; void* kthread; int /*<<< orphan*/  dma_completion; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  queue; void** hw_link; scalar_t__* hw_phys_link; void* context_base; scalar_t__ context_phys_base; scalar_t__ key_phys_base; scalar_t__ iv_phys_base; void* key_base; void* iv_base; scalar_t__* hw_phys_desc; void** hw_desc; void* regs_base; TYPE_1__* device; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int AES_KEYSIZE_128 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int SAHARA_CMD_MODE_BATCH ; 
 int SAHARA_CMD_RESET ; 
 int SAHARA_CONTROL_ENABLE_INT ; 
 int SAHARA_CONTROL_RNG_AUTORSD ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int SAHARA_MAX_HW_DESC ; 
 int SAHARA_MAX_HW_LINK ; 
 int /*<<< orphan*/  SAHARA_QUEUE_LENGTH ; 
 int /*<<< orphan*/  SAHARA_REG_CMD ; 
 int /*<<< orphan*/  SAHARA_REG_CONTROL ; 
 int /*<<< orphan*/  SAHARA_REG_VERSION ; 
 int SAHARA_VERSION_3 ; 
 int SAHARA_VERSION_4 ; 
 int SHA256_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct sahara_dev* dev_ptr ; 
 void* FUNC10 (TYPE_1__*,char*) ; 
 struct sahara_dev* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sahara_dev*) ; 
 void* FUNC14 (TYPE_1__*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ ,struct sahara_dev*,char*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct sahara_dev*) ; 
 int /*<<< orphan*/  sahara_irq_handler ; 
 int /*<<< orphan*/  sahara_queue_manage ; 
 int FUNC22 (struct sahara_dev*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct sahara_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct sahara_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct sahara_dev *dev;
	u32 version;
	int irq;
	int err;
	int i;

	dev = FUNC11(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->device = &pdev->dev;
	FUNC21(pdev, dev);

	/* Get the base address */
	dev->regs_base = FUNC12(pdev, 0);
	if (FUNC0(dev->regs_base))
		return FUNC1(dev->regs_base);

	/* Get the IRQ */
	irq = FUNC20(pdev,  0);
	if (irq < 0)
		return irq;

	err = FUNC13(&pdev->dev, irq, sahara_irq_handler,
			       0, FUNC9(&pdev->dev), dev);
	if (err) {
		FUNC7(&pdev->dev, "failed to request irq\n");
		return err;
	}

	/* clocks */
	dev->clk_ipg = FUNC10(&pdev->dev, "ipg");
	if (FUNC0(dev->clk_ipg)) {
		FUNC7(&pdev->dev, "Could not get ipg clock\n");
		return FUNC1(dev->clk_ipg);
	}

	dev->clk_ahb = FUNC10(&pdev->dev, "ahb");
	if (FUNC0(dev->clk_ahb)) {
		FUNC7(&pdev->dev, "Could not get ahb clock\n");
		return FUNC1(dev->clk_ahb);
	}

	/* Allocate HW descriptors */
	dev->hw_desc[0] = FUNC14(&pdev->dev,
			SAHARA_MAX_HW_DESC * sizeof(struct sahara_hw_desc),
			&dev->hw_phys_desc[0], GFP_KERNEL);
	if (!dev->hw_desc[0]) {
		FUNC7(&pdev->dev, "Could not allocate hw descriptors\n");
		return -ENOMEM;
	}
	dev->hw_desc[1] = dev->hw_desc[0] + 1;
	dev->hw_phys_desc[1] = dev->hw_phys_desc[0] +
				sizeof(struct sahara_hw_desc);

	/* Allocate space for iv and key */
	dev->key_base = FUNC14(&pdev->dev, 2 * AES_KEYSIZE_128,
				&dev->key_phys_base, GFP_KERNEL);
	if (!dev->key_base) {
		FUNC7(&pdev->dev, "Could not allocate memory for key\n");
		return -ENOMEM;
	}
	dev->iv_base = dev->key_base + AES_KEYSIZE_128;
	dev->iv_phys_base = dev->key_phys_base + AES_KEYSIZE_128;

	/* Allocate space for context: largest digest + message length field */
	dev->context_base = FUNC14(&pdev->dev,
					SHA256_DIGEST_SIZE + 4,
					&dev->context_phys_base, GFP_KERNEL);
	if (!dev->context_base) {
		FUNC7(&pdev->dev, "Could not allocate memory for MDHA context\n");
		return -ENOMEM;
	}

	/* Allocate space for HW links */
	dev->hw_link[0] = FUNC14(&pdev->dev,
			SAHARA_MAX_HW_LINK * sizeof(struct sahara_hw_link),
			&dev->hw_phys_link[0], GFP_KERNEL);
	if (!dev->hw_link[0]) {
		FUNC7(&pdev->dev, "Could not allocate hw links\n");
		return -ENOMEM;
	}
	for (i = 1; i < SAHARA_MAX_HW_LINK; i++) {
		dev->hw_phys_link[i] = dev->hw_phys_link[i - 1] +
					sizeof(struct sahara_hw_link);
		dev->hw_link[i] = dev->hw_link[i - 1] + 1;
	}

	FUNC6(&dev->queue, SAHARA_QUEUE_LENGTH);

	FUNC18(&dev->queue_mutex);

	dev_ptr = dev;

	dev->kthread = FUNC16(sahara_queue_manage, dev, "sahara_crypto");
	if (FUNC0(dev->kthread)) {
		return FUNC1(dev->kthread);
	}

	FUNC15(&dev->dma_completion);

	err = FUNC5(dev->clk_ipg);
	if (err)
		return err;
	err = FUNC5(dev->clk_ahb);
	if (err)
		goto clk_ipg_disable;

	version = FUNC22(dev, SAHARA_REG_VERSION);
	if (FUNC19(pdev->dev.of_node, "fsl,imx27-sahara")) {
		if (version != SAHARA_VERSION_3)
			err = -ENODEV;
	} else if (FUNC19(pdev->dev.of_node,
			"fsl,imx53-sahara")) {
		if (((version >> 8) & 0xff) != SAHARA_VERSION_4)
			err = -ENODEV;
		version = (version >> 8) & 0xff;
	}
	if (err == -ENODEV) {
		FUNC7(&pdev->dev, "SAHARA version %d not supported\n",
				version);
		goto err_algs;
	}

	dev->version = version;

	FUNC24(dev, SAHARA_CMD_RESET | SAHARA_CMD_MODE_BATCH,
		     SAHARA_REG_CMD);
	FUNC24(dev, FUNC3(0) |
			FUNC2(8) |
			SAHARA_CONTROL_RNG_AUTORSD |
			SAHARA_CONTROL_ENABLE_INT,
			SAHARA_REG_CONTROL);

	err = FUNC23(dev);
	if (err)
		goto err_algs;

	FUNC8(&pdev->dev, "SAHARA version %d initialized\n", version);

	return 0;

err_algs:
	FUNC17(dev->kthread);
	dev_ptr = NULL;
	FUNC4(dev->clk_ahb);
clk_ipg_disable:
	FUNC4(dev->clk_ipg);

	return err;
}