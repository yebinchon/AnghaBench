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
typedef  int /*<<< orphan*/  u32 ;
struct hns_roce_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_PORT_UP ; 
 int PAGES_SHIFT_16 ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG1_REG ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_M ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_S ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_M ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_S ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG2_REG ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_M ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_S ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_M ; 
 int /*<<< orphan*/  ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*) ; 
 int FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*) ; 
 int FUNC5 (struct hns_roce_dev*) ; 
 int FUNC6 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hns_roce_dev*) ; 
 int FUNC9 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hns_roce_dev*) ; 
 int FUNC11 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct hns_roce_dev *hr_dev)
{
	int ret;
	u32 val;
	__le32 tmp;
	struct device *dev = &hr_dev->pdev->dev;

	/* DMAE user config */
	val = FUNC13(hr_dev, ROCEE_DMAE_USER_CFG1_REG);
	tmp = FUNC0(val);
	FUNC14(tmp, ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_M,
		       ROCEE_DMAE_USER_CFG1_ROCEE_CACHE_TB_CFG_S, 0xf);
	FUNC14(tmp, ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_M,
		       ROCEE_DMAE_USER_CFG1_ROCEE_STREAM_ID_TB_CFG_S,
		       1 << PAGES_SHIFT_16);
	val = FUNC12(tmp);
	FUNC15(hr_dev, ROCEE_DMAE_USER_CFG1_REG, val);

	val = FUNC13(hr_dev, ROCEE_DMAE_USER_CFG2_REG);
	tmp = FUNC0(val);
	FUNC14(tmp, ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_M,
		       ROCEE_DMAE_USER_CFG2_ROCEE_CACHE_PKT_CFG_S, 0xf);
	FUNC14(tmp, ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_M,
		       ROCEE_DMAE_USER_CFG2_ROCEE_STREAM_ID_PKT_CFG_S,
		       1 << PAGES_SHIFT_16);

	ret = FUNC5(hr_dev);
	if (ret) {
		FUNC1(dev, "doorbell init failed!\n");
		return ret;
	}

	ret = FUNC9(hr_dev);
	if (ret) {
		FUNC1(dev, "raq init failed!\n");
		goto error_failed_raq_init;
	}

	ret = FUNC3(hr_dev);
	if (ret) {
		FUNC1(dev, "bt init failed!\n");
		goto error_failed_bt_init;
	}

	ret = FUNC11(hr_dev);
	if (ret) {
		FUNC1(dev, "tptr init failed!\n");
		goto error_failed_tptr_init;
	}

	ret = FUNC6(hr_dev);
	if (ret) {
		FUNC1(dev, "free mr init failed!\n");
		goto error_failed_free_mr_init;
	}

	FUNC7(hr_dev, HNS_ROCE_PORT_UP);

	return 0;

error_failed_free_mr_init:
	FUNC10(hr_dev);

error_failed_tptr_init:
	FUNC2(hr_dev);

error_failed_bt_init:
	FUNC8(hr_dev);

error_failed_raq_init:
	FUNC4(hr_dev);
	return ret;
}