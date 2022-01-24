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
typedef  int /*<<< orphan*/  u32 ;
struct hns_roce_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  ROCEE_DB_SQ_WL_REG ; 
 int /*<<< orphan*/  ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_M ; 
 int /*<<< orphan*/  ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_S ; 
 int /*<<< orphan*/  ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_M ; 
 int /*<<< orphan*/  ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hns_roce_dev *hr_dev, u32 sdb_alept,
			     u32 sdb_alful)
{
	__le32 tmp;
	u32 val;

	/* Configure SDB */
	val = FUNC2(hr_dev, ROCEE_DB_SQ_WL_REG);
	tmp = FUNC0(val);
	FUNC3(tmp, ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_M,
		       ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_S, sdb_alful);
	FUNC3(tmp, ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_M,
		       ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_S, sdb_alept);
	val = FUNC1(tmp);
	FUNC4(hr_dev, ROCEE_DB_SQ_WL_REG, val);
}