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
struct hns_roce_eq {scalar_t__ type_flag; scalar_t__ arm_st; int eqn; int cons_index; int /*<<< orphan*/  doorbell; struct hns_roce_dev* hr_dev; } ;
struct hns_roce_dev {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 scalar_t__ HNS_ROCE_AEQ ; 
 int HNS_ROCE_EQ_DB_CMD_AEQ ; 
 int HNS_ROCE_EQ_DB_CMD_AEQ_ARMED ; 
 int HNS_ROCE_EQ_DB_CMD_CEQ ; 
 int HNS_ROCE_EQ_DB_CMD_CEQ_ARMED ; 
 int HNS_ROCE_V2_CONS_IDX_M ; 
 scalar_t__ HNS_ROCE_V2_EQ_ALWAYS_ARMED ; 
 int /*<<< orphan*/  HNS_ROCE_V2_EQ_DB_CMD_M ; 
 int /*<<< orphan*/  HNS_ROCE_V2_EQ_DB_CMD_S ; 
 int /*<<< orphan*/  HNS_ROCE_V2_EQ_DB_PARA_M ; 
 int /*<<< orphan*/  HNS_ROCE_V2_EQ_DB_PARA_S ; 
 int /*<<< orphan*/  HNS_ROCE_V2_EQ_DB_TAG_M ; 
 int /*<<< orphan*/  HNS_ROCE_V2_EQ_DB_TAG_S ; 
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hns_roce_eq *eq)
{
	struct hns_roce_dev *hr_dev = eq->hr_dev;
	__le32 doorbell[2];

	doorbell[0] = 0;
	doorbell[1] = 0;

	if (eq->type_flag == HNS_ROCE_AEQ) {
		FUNC1(doorbell[0], HNS_ROCE_V2_EQ_DB_CMD_M,
			       HNS_ROCE_V2_EQ_DB_CMD_S,
			       eq->arm_st == HNS_ROCE_V2_EQ_ALWAYS_ARMED ?
			       HNS_ROCE_EQ_DB_CMD_AEQ :
			       HNS_ROCE_EQ_DB_CMD_AEQ_ARMED);
	} else {
		FUNC1(doorbell[0], HNS_ROCE_V2_EQ_DB_TAG_M,
			       HNS_ROCE_V2_EQ_DB_TAG_S, eq->eqn);

		FUNC1(doorbell[0], HNS_ROCE_V2_EQ_DB_CMD_M,
			       HNS_ROCE_V2_EQ_DB_CMD_S,
			       eq->arm_st == HNS_ROCE_V2_EQ_ALWAYS_ARMED ?
			       HNS_ROCE_EQ_DB_CMD_CEQ :
			       HNS_ROCE_EQ_DB_CMD_CEQ_ARMED);
	}

	FUNC1(doorbell[1], HNS_ROCE_V2_EQ_DB_PARA_M,
		       HNS_ROCE_V2_EQ_DB_PARA_S,
		       (eq->cons_index & HNS_ROCE_V2_CONS_IDX_M));

	FUNC0(hr_dev, doorbell, eq->doorbell);
}