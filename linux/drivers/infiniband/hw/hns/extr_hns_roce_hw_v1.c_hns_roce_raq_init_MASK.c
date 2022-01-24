#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct hns_roce_raq_table {TYPE_2__* e_raq_buf; } ;
struct hns_roce_v1_priv {struct hns_roce_raq_table raq_table; } ;
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_5__ {int map; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HNS_ROCE_V1_EXT_RAQ_WF ; 
 int HNS_ROCE_V1_RAQ_ENTRY ; 
 int HNS_ROCE_V1_RAQ_SIZE ; 
 int POL_TIME_INTERVAL_VAL ; 
 int /*<<< orphan*/  ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_M ; 
 int /*<<< orphan*/  ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_S ; 
 int /*<<< orphan*/  ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_M ; 
 int /*<<< orphan*/  ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_S ; 
 int /*<<< orphan*/  ROCEE_EXT_RAQ_H_REG ; 
 int /*<<< orphan*/  ROCEE_EXT_RAQ_REG ; 
 int /*<<< orphan*/  ROCEE_GLB_CFG_REG ; 
 int /*<<< orphan*/  ROCEE_GLB_CFG_TRP_RAQ_DROP_EN_S ; 
 int /*<<< orphan*/  ROCEE_RAQ_WL_REG ; 
 int /*<<< orphan*/  ROCEE_RAQ_WL_ROCEE_RAQ_WL_M ; 
 int /*<<< orphan*/  ROCEE_RAQ_WL_ROCEE_RAQ_WL_S ; 
 int /*<<< orphan*/  ROCEE_WRMS_POL_TIME_INTERVAL_REG ; 
 int /*<<< orphan*/  ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_EXT_RAQ_MODE ; 
 int /*<<< orphan*/  ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_M ; 
 int /*<<< orphan*/  ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_S ; 
 int /*<<< orphan*/  ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_M ; 
 int /*<<< orphan*/  ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_S ; 
 int /*<<< orphan*/  ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_EN_S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hns_roce_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct hns_roce_dev *hr_dev)
{
	int ret;
	u32 val;
	__le32 tmp;
	int raq_shift = 0;
	dma_addr_t addr;
	struct hns_roce_v1_priv *priv;
	struct hns_roce_raq_table *raq;
	struct device *dev = &hr_dev->pdev->dev;

	priv = (struct hns_roce_v1_priv *)hr_dev->priv;
	raq = &priv->raq_table;

	raq->e_raq_buf = FUNC5(sizeof(*(raq->e_raq_buf)), GFP_KERNEL);
	if (!raq->e_raq_buf)
		return -ENOMEM;

	raq->e_raq_buf->buf = FUNC2(dev, HNS_ROCE_V1_RAQ_SIZE,
						 &addr, GFP_KERNEL);
	if (!raq->e_raq_buf->buf) {
		ret = -ENOMEM;
		goto err_dma_alloc_raq;
	}
	raq->e_raq_buf->map = addr;

	/* Configure raq extended address. 48bit 4K align*/
	FUNC10(hr_dev, ROCEE_EXT_RAQ_REG, raq->e_raq_buf->map >> 12);

	/* Configure raq_shift */
	raq_shift = FUNC3(HNS_ROCE_V1_RAQ_SIZE / HNS_ROCE_V1_RAQ_ENTRY);
	val = FUNC7(hr_dev, ROCEE_EXT_RAQ_H_REG);
	tmp = FUNC0(val);
	FUNC9(tmp, ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_M,
		       ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_S, raq_shift);
	/*
	 * 44 = 32 + 12, When evaluating addr to hardware, shift 12 because of
	 * using 4K page, and shift more 32 because of
	 * caculating the high 32 bit value evaluated to hardware.
	 */
	FUNC9(tmp, ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_M,
		       ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_S,
		       raq->e_raq_buf->map >> 44);
	val = FUNC6(tmp);
	FUNC10(hr_dev, ROCEE_EXT_RAQ_H_REG, val);
	FUNC1(dev, "Configure raq_shift 0x%x.\n", val);

	/* Configure raq threshold */
	val = FUNC7(hr_dev, ROCEE_RAQ_WL_REG);
	tmp = FUNC0(val);
	FUNC9(tmp, ROCEE_RAQ_WL_ROCEE_RAQ_WL_M,
		       ROCEE_RAQ_WL_ROCEE_RAQ_WL_S,
		       HNS_ROCE_V1_EXT_RAQ_WF);
	val = FUNC6(tmp);
	FUNC10(hr_dev, ROCEE_RAQ_WL_REG, val);
	FUNC1(dev, "Configure raq_wl 0x%x.\n", val);

	/* Enable extend raq */
	val = FUNC7(hr_dev, ROCEE_WRMS_POL_TIME_INTERVAL_REG);
	tmp = FUNC0(val);
	FUNC9(tmp,
		       ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_M,
		       ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_S,
		       POL_TIME_INTERVAL_VAL);
	FUNC8(tmp, ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_EXT_RAQ_MODE, 1);
	FUNC9(tmp,
		       ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_M,
		       ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_S,
		       2);
	FUNC8(tmp,
		     ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_EN_S, 1);
	val = FUNC6(tmp);
	FUNC10(hr_dev, ROCEE_WRMS_POL_TIME_INTERVAL_REG, val);
	FUNC1(dev, "Configure WrmsPolTimeInterval 0x%x.\n", val);

	/* Enable raq drop */
	val = FUNC7(hr_dev, ROCEE_GLB_CFG_REG);
	tmp = FUNC0(val);
	FUNC8(tmp, ROCEE_GLB_CFG_TRP_RAQ_DROP_EN_S, 1);
	val = FUNC6(tmp);
	FUNC10(hr_dev, ROCEE_GLB_CFG_REG, val);
	FUNC1(dev, "Configure GlbCfg = 0x%x.\n", val);

	return 0;

err_dma_alloc_raq:
	FUNC4(raq->e_raq_buf);
	return ret;
}