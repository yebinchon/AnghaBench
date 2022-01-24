#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hns_roce_db_table {TYPE_3__* ext_db; } ;
struct hns_roce_v1_priv {struct hns_roce_db_table db_table; } ;
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int esdb_dep; TYPE_2__* sdb_buf_list; } ;
struct TYPE_5__ {int map; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_M ; 
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_S ; 
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_M ; 
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_S ; 
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_H_REG ; 
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_REG ; 
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_WL_EMPTY_REG ; 
 int /*<<< orphan*/  ROCEE_EXT_DB_SQ_WL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hns_roce_dev *hr_dev, u32 ext_sdb_alept,
				 u32 ext_sdb_alful)
{
	struct device *dev = &hr_dev->pdev->dev;
	struct hns_roce_v1_priv *priv;
	struct hns_roce_db_table *db;
	dma_addr_t sdb_dma_addr;
	__le32 tmp;
	u32 val;

	priv = (struct hns_roce_v1_priv *)hr_dev->priv;
	db = &priv->db_table;

	/* Configure extend SDB threshold */
	FUNC5(hr_dev, ROCEE_EXT_DB_SQ_WL_EMPTY_REG, ext_sdb_alept);
	FUNC5(hr_dev, ROCEE_EXT_DB_SQ_WL_REG, ext_sdb_alful);

	/* Configure extend SDB base addr */
	sdb_dma_addr = db->ext_db->sdb_buf_list->map;
	FUNC5(hr_dev, ROCEE_EXT_DB_SQ_REG, (u32)(sdb_dma_addr >> 12));

	/* Configure extend SDB depth */
	val = FUNC3(hr_dev, ROCEE_EXT_DB_SQ_H_REG);
	tmp = FUNC0(val);
	FUNC4(tmp, ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_M,
		       ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_S,
		       db->ext_db->esdb_dep);
	/*
	 * 44 = 32 + 12, When evaluating addr to hardware, shift 12 because of
	 * using 4K page, and shift more 32 because of
	 * caculating the high 32 bit value evaluated to hardware.
	 */
	FUNC4(tmp, ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_M,
		       ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_S, sdb_dma_addr >> 44);
	val = FUNC2(tmp);
	FUNC5(hr_dev, ROCEE_EXT_DB_SQ_H_REG, val);

	FUNC1(dev, "ext SDB depth: 0x%x\n", db->ext_db->esdb_dep);
	FUNC1(dev, "ext SDB threshold: epmty: 0x%x, ful: 0x%x\n",
		ext_sdb_alept, ext_sdb_alful);
}