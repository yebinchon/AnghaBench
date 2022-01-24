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
typedef  int u32 ;
struct hns_roce_cq {int cq_depth; int cqn; int /*<<< orphan*/  cq_db_l; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M ; 
 int /*<<< orphan*/  ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M ; 
 int /*<<< orphan*/  ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S ; 
 int /*<<< orphan*/  ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S ; 
 int /*<<< orphan*/  ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S ; 
 int /*<<< orphan*/  ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M ; 
 int /*<<< orphan*/  ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct hns_roce_cq *hr_cq, u32 cons_index)
{
	__le32 doorbell[2];

	doorbell[0] = FUNC0(cons_index & ((hr_cq->cq_depth << 1) - 1));
	doorbell[1] = 0;
	FUNC2(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S, 1);
	FUNC3(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M,
		       ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S, 3);
	FUNC3(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M,
		       ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S, 0);
	FUNC3(doorbell[1], ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M,
		       ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S, hr_cq->cqn);

	FUNC1(doorbell, hr_cq->cq_db_l);
}