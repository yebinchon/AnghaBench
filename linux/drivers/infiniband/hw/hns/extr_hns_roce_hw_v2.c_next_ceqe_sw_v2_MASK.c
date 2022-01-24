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
struct hns_roce_eq {int cons_index; int entries; int /*<<< orphan*/  hop_num; } ;
struct hns_roce_ceqe {int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_V2_CEQ_CEQE_OWNER_S ; 
 struct hns_roce_ceqe* FUNC0 (struct hns_roce_eq*,int) ; 
 struct hns_roce_ceqe* FUNC1 (struct hns_roce_eq*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hns_roce_ceqe *FUNC3(struct hns_roce_eq *eq)
{
	struct hns_roce_ceqe *ceqe;

	if (!eq->hop_num)
		ceqe = FUNC0(eq, eq->cons_index);
	else
		ceqe = FUNC1(eq, eq->cons_index);

	return (!!(FUNC2(ceqe->comp, HNS_ROCE_V2_CEQ_CEQE_OWNER_S))) ^
		(!!(eq->cons_index & eq->entries)) ? ceqe : NULL;
}