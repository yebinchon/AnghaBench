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
typedef  size_t u32 ;
struct i40iw_msix_vector {int /*<<< orphan*/  idx; int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_ceqs; } ;
struct TYPE_6__ {int ceq_valid; TYPE_2__ hmc_fpm_misc; } ;
struct i40iw_device {TYPE_3__ sc_dev; struct i40iw_ceq* ceqlist; int /*<<< orphan*/  ceqs_count; struct i40iw_msix_vector* iw_msixtbl; scalar_t__ msix_shared; int /*<<< orphan*/  msix_count; int /*<<< orphan*/  iw_qvlist; } ;
struct i40iw_ceq {int /*<<< orphan*/  msix_idx; int /*<<< orphan*/  irq; } ;
struct i40e_info {TYPE_1__* ops; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {int (* setup_qvlist ) (struct i40e_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40IW_ERR_BAD_PTR ; 
 int I40IW_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  i40iw_client ; 
 int FUNC0 (struct i40iw_device*,struct i40iw_ceq*,size_t,struct i40iw_msix_vector*) ; 
 int FUNC1 (struct i40iw_device*,struct i40iw_ceq*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*,struct i40iw_ceq*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct i40iw_ceq* FUNC5 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i40iw_ceq*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i40e_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC9(struct i40iw_device *iwdev,
					       struct i40e_info *ldev)
{
	u32 i;
	u32 ceq_id;
	struct i40iw_ceq *iwceq;
	struct i40iw_msix_vector *msix_vec;
	enum i40iw_status_code status = 0;
	u32 num_ceqs;

	if (ldev && ldev->ops && ldev->ops->setup_qvlist) {
		status = ldev->ops->setup_qvlist(ldev, &i40iw_client,
						 iwdev->iw_qvlist);
		if (status)
			goto exit;
	} else {
		status = I40IW_ERR_BAD_PTR;
		goto exit;
	}

	num_ceqs = FUNC7(iwdev->msix_count, iwdev->sc_dev.hmc_fpm_misc.max_ceqs);
	iwdev->ceqlist = FUNC5(num_ceqs, sizeof(*iwdev->ceqlist), GFP_KERNEL);
	if (!iwdev->ceqlist) {
		status = I40IW_ERR_NO_MEMORY;
		goto exit;
	}
	i = (iwdev->msix_shared) ? 0 : 1;
	for (ceq_id = 0; i < num_ceqs; i++, ceq_id++) {
		iwceq = &iwdev->ceqlist[ceq_id];
		status = FUNC1(iwdev, iwceq, ceq_id);
		if (status) {
			FUNC4("create ceq status = %d\n", status);
			break;
		}

		msix_vec = &iwdev->iw_msixtbl[i];
		iwceq->irq = msix_vec->irq;
		iwceq->msix_idx = msix_vec->idx;
		status = FUNC0(iwdev, iwceq, ceq_id, msix_vec);
		if (status) {
			FUNC2(iwdev, iwceq);
			break;
		}
		FUNC3(&iwdev->sc_dev, msix_vec->idx);
		iwdev->ceqs_count++;
	}
exit:
	if (status && !iwdev->ceqs_count) {
		FUNC6(iwdev->ceqlist);
		iwdev->ceqlist = NULL;
		return status;
	} else {
		iwdev->sc_dev.ceq_valid = true;
		return 0;
	}

}