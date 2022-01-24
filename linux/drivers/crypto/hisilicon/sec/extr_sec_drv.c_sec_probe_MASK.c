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
struct sec_hw_sgl {int dummy; } ;
struct sec_dev_info {int /*<<< orphan*/ * queues; int /*<<< orphan*/  hw_sgl_pool; int /*<<< orphan*/  dev_lock; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SEC_Q_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct sec_dev_info* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct sec_dev_info*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sec_dev_info*) ; 
 int FUNC10 (struct sec_dev_info*,struct platform_device*) ; 
 int FUNC11 (struct sec_dev_info*) ; 
 int FUNC12 (struct sec_dev_info*,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sec_dev_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct sec_dev_info *info;
	struct device *dev = &pdev->dev;
	int i, j;
	int ret;

	ret = FUNC3(dev, FUNC0(64));
	if (ret) {
		FUNC1(dev, "Failed to set 64 bit dma mask %d", ret);
		return -ENODEV;
	}

	info = FUNC2(dev, (sizeof(*info)), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = dev;
	FUNC5(&info->dev_lock);

	info->hw_sgl_pool = FUNC4("sgl", dev,
					     sizeof(struct sec_hw_sgl), 64, 0);
	if (!info->hw_sgl_pool) {
		FUNC1(dev, "Failed to create sec sgl dma pool\n");
		return -ENOMEM;
	}

	ret = FUNC10(info, pdev);
	if (ret) {
		FUNC1(dev, "Base initialization fail! %d\n", ret);
		return ret;
	}

	for (i = 0; i < SEC_Q_NUM; i++) {
		ret = FUNC12(info, &info->queues[i], i);
		if (ret)
			goto queues_unconfig;

		ret = FUNC13(&info->queues[i]);
		if (ret) {
			FUNC15(info, &info->queues[i]);
			goto queues_unconfig;
		}
	}

	ret = FUNC7();
	if (ret) {
		FUNC1(dev, "Failed to register algorithms with crypto %d\n",
			ret);
		goto queues_unconfig;
	}

	FUNC6(pdev, info);

	ret = FUNC11(info);
	if (ret)
		goto algs_unregister;

	return 0;

algs_unregister:
	FUNC8();
queues_unconfig:
	for (j = i - 1; j >= 0; j--) {
		FUNC14(&info->queues[j]);
		FUNC15(info, &info->queues[j]);
	}
	FUNC9(info);

	return ret;
}