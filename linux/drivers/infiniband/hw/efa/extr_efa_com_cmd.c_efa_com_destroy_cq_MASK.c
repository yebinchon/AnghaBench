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
struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int /*<<< orphan*/  efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_com_destroy_cq_params {int /*<<< orphan*/  cq_idx; } ;
struct efa_admin_destroy_cq_resp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  opcode; } ;
struct efa_admin_destroy_cq_cmd {TYPE_1__ aq_common_desc; int /*<<< orphan*/  cq_idx; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef  int /*<<< orphan*/  destroy_resp ;
typedef  int /*<<< orphan*/  destroy_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_ADMIN_DESTROY_CQ ; 
 int FUNC0 (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct efa_com_dev *edev,
		       struct efa_com_destroy_cq_params *params)
{
	struct efa_admin_destroy_cq_cmd destroy_cmd = {};
	struct efa_admin_destroy_cq_resp destroy_resp;
	struct efa_com_admin_queue *aq = &edev->aq;
	int err;

	destroy_cmd.cq_idx = params->cq_idx;
	destroy_cmd.aq_common_desc.opcode = EFA_ADMIN_DESTROY_CQ;

	err = FUNC0(aq,
			       (struct efa_admin_aq_entry *)&destroy_cmd,
			       sizeof(destroy_cmd),
			       (struct efa_admin_acq_entry *)&destroy_resp,
			       sizeof(destroy_resp));

	if (err) {
		FUNC1(edev->efa_dev,
				      "Failed to destroy CQ-%u [%d]\n",
				      params->cq_idx, err);
		return err;
	}

	return 0;
}