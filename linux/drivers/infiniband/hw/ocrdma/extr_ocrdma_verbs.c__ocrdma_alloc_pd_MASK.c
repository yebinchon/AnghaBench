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
struct ocrdma_ucontext {int dummy; } ;
struct ocrdma_pd {int dpp_enabled; int num_dpp_qp; } ;
struct TYPE_6__ {int wqe_size; scalar_t__ max_dpp_pds; } ;
struct TYPE_4__ {int db_page_size; } ;
struct ocrdma_dev {TYPE_2__* pd_mgr; TYPE_3__ attr; TYPE_1__ nic_info; } ;
struct ib_udata {int dummy; } ;
struct TYPE_5__ {scalar_t__ pd_prealloc_valid; } ;

/* Variables and functions */
 scalar_t__ OCRDMA_ASIC_GEN_SKH_R ; 
 scalar_t__ FUNC0 (struct ocrdma_dev*) ; 
 int FUNC1 (struct ocrdma_dev*,struct ocrdma_pd*) ; 
 int FUNC2 (struct ocrdma_dev*,struct ocrdma_pd*) ; 

__attribute__((used)) static int FUNC3(struct ocrdma_dev *dev, struct ocrdma_pd *pd,
			    struct ocrdma_ucontext *uctx,
			    struct ib_udata *udata)
{
	int status;

	if (udata && uctx && dev->attr.max_dpp_pds) {
		pd->dpp_enabled =
			FUNC0(dev) == OCRDMA_ASIC_GEN_SKH_R;
		pd->num_dpp_qp =
			pd->dpp_enabled ? (dev->nic_info.db_page_size /
					   dev->attr.wqe_size) : 0;
	}

	if (dev->pd_mgr->pd_prealloc_valid)
		return FUNC1(dev, pd);

retry:
	status = FUNC2(dev, pd);
	if (status) {
		if (pd->dpp_enabled) {
			pd->dpp_enabled = false;
			pd->num_dpp_qp = 0;
			goto retry;
		}
		return status;
	}

	return 0;
}