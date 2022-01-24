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
struct hns_roce_v2_priv {int dummy; } ;
struct hns_roce_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  priv; int /*<<< orphan*/ * dev; TYPE_1__* pci_dev; } ;
struct hnae3_handle {struct hns_roce_dev* priv; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  hns_roce_dev ; 
 int FUNC1 (struct hns_roce_dev*,struct hnae3_handle*) ; 
 int FUNC2 (struct hns_roce_dev*) ; 
 struct hns_roce_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_dev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hnae3_handle *handle)
{
	struct hns_roce_dev *hr_dev;
	int ret;

	hr_dev = FUNC3(hns_roce_dev, ib_dev);
	if (!hr_dev)
		return -ENOMEM;

	hr_dev->priv = FUNC6(sizeof(struct hns_roce_v2_priv), GFP_KERNEL);
	if (!hr_dev->priv) {
		ret = -ENOMEM;
		goto error_failed_kzalloc;
	}

	hr_dev->pci_dev = handle->pdev;
	hr_dev->dev = &handle->pdev->dev;

	ret = FUNC1(hr_dev, handle);
	if (ret) {
		FUNC0(hr_dev->dev, "Get Configuration failed!\n");
		goto error_failed_get_cfg;
	}

	ret = FUNC2(hr_dev);
	if (ret) {
		FUNC0(hr_dev->dev, "RoCE Engine init failed!\n");
		goto error_failed_get_cfg;
	}

	handle->priv = hr_dev;

	return 0;

error_failed_get_cfg:
	FUNC5(hr_dev->priv);

error_failed_kzalloc:
	FUNC4(&hr_dev->ib_dev);

	return ret;
}