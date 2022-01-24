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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hns_roce_v1_priv {int dummy; } ;
struct hns_roce_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  priv; struct device* dev; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hns_roce_dev ; 
 int FUNC3 (struct hns_roce_dev*) ; 
 int FUNC4 (struct hns_roce_dev*) ; 
 struct hns_roce_dev* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_dev ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct hns_roce_dev*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int ret;
	struct hns_roce_dev *hr_dev;
	struct device *dev = &pdev->dev;

	hr_dev = FUNC5(hns_roce_dev, ib_dev);
	if (!hr_dev)
		return -ENOMEM;

	hr_dev->priv = FUNC8(sizeof(struct hns_roce_v1_priv), GFP_KERNEL);
	if (!hr_dev->priv) {
		ret = -ENOMEM;
		goto error_failed_kzalloc;
	}

	hr_dev->pdev = pdev;
	hr_dev->dev = dev;
	FUNC9(pdev, hr_dev);

	if (FUNC2(dev, FUNC0(64ULL)) &&
	    FUNC2(dev, FUNC0(32ULL))) {
		FUNC1(dev, "Not usable DMA addressing mode\n");
		ret = -EIO;
		goto error_failed_get_cfg;
	}

	ret = FUNC3(hr_dev);
	if (ret) {
		FUNC1(dev, "Get Configuration failed!\n");
		goto error_failed_get_cfg;
	}

	ret = FUNC4(hr_dev);
	if (ret) {
		FUNC1(dev, "RoCE engine init failed!\n");
		goto error_failed_get_cfg;
	}

	return 0;

error_failed_get_cfg:
	FUNC7(hr_dev->priv);

error_failed_kzalloc:
	FUNC6(&hr_dev->ib_dev);

	return ret;
}