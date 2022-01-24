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
struct TYPE_2__ {int flags; } ;
struct hns_roce_dev {int /*<<< orphan*/  priv_uar; TYPE_1__ caps; int /*<<< orphan*/  pgdir_mutex; int /*<<< orphan*/  pgdir_list; int /*<<< orphan*/  bt_cmd_lock; int /*<<< orphan*/  sm_lock; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HNS_ROCE_CAP_FLAG_RECORD_DB ; 
 int HNS_ROCE_CAP_FLAG_SRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*) ; 
 int FUNC7 (struct hns_roce_dev*) ; 
 int FUNC8 (struct hns_roce_dev*) ; 
 int FUNC9 (struct hns_roce_dev*) ; 
 int FUNC10 (struct hns_roce_dev*) ; 
 int FUNC11 (struct hns_roce_dev*) ; 
 int FUNC12 (struct hns_roce_dev*) ; 
 int FUNC13 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct hns_roce_dev *hr_dev)
{
	int ret;
	struct device *dev = hr_dev->dev;

	FUNC16(&hr_dev->sm_lock);
	FUNC16(&hr_dev->bt_cmd_lock);

	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_RECORD_DB) {
		FUNC0(&hr_dev->pgdir_list);
		FUNC15(&hr_dev->pgdir_mutex);
	}

	ret = FUNC12(hr_dev);
	if (ret) {
		FUNC1(dev, "Failed to initialize uar table. aborting\n");
		return ret;
	}

	ret = FUNC13(hr_dev, &hr_dev->priv_uar);
	if (ret) {
		FUNC1(dev, "Failed to allocate priv_uar.\n");
		goto err_uar_table_free;
	}

	ret = FUNC9(hr_dev);
	if (ret) {
		FUNC1(dev, "Failed to init protected domain table.\n");
		goto err_uar_alloc_free;
	}

	ret = FUNC8(hr_dev);
	if (ret) {
		FUNC1(dev, "Failed to init memory region table.\n");
		goto err_pd_table_free;
	}

	ret = FUNC7(hr_dev);
	if (ret) {
		FUNC1(dev, "Failed to init completion queue table.\n");
		goto err_mr_table_free;
	}

	ret = FUNC10(hr_dev);
	if (ret) {
		FUNC1(dev, "Failed to init queue pair table.\n");
		goto err_cq_table_free;
	}

	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_SRQ) {
		ret = FUNC11(hr_dev);
		if (ret) {
			FUNC1(dev,
				"Failed to init share receive queue table.\n");
			goto err_qp_table_free;
		}
	}

	return 0;

err_qp_table_free:
	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_SRQ)
		FUNC5(hr_dev);

err_cq_table_free:
	FUNC2(hr_dev);

err_mr_table_free:
	FUNC3(hr_dev);

err_pd_table_free:
	FUNC4(hr_dev);

err_uar_alloc_free:
	FUNC14(hr_dev, &hr_dev->priv_uar);

err_uar_table_free:
	FUNC6(hr_dev);
	return ret;
}