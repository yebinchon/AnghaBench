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
typedef  scalar_t__ u32 ;
struct i40iw_msix_vector {scalar_t__ ceq_id; int /*<<< orphan*/  mask; int /*<<< orphan*/  irq; int /*<<< orphan*/  cpu_affinity; } ;
struct i40iw_device {int /*<<< orphan*/  dpc_tasklet; scalar_t__ msix_shared; } ;
struct i40iw_ceq {int /*<<< orphan*/  dpc_tasklet; scalar_t__ msix_shared; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ERR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i40iw_ceq_dpc ; 
 int /*<<< orphan*/  i40iw_ceq_handler ; 
 int /*<<< orphan*/  i40iw_dpc ; 
 int /*<<< orphan*/  i40iw_irq_handler ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static enum i40iw_status_code FUNC6(struct i40iw_device *iwdev,
							 struct i40iw_ceq *iwceq,
							 u32 ceq_id,
							 struct i40iw_msix_vector *msix_vec)
{
	enum i40iw_status_code status;

	if (iwdev->msix_shared && !ceq_id) {
		FUNC5(&iwdev->dpc_tasklet, i40iw_dpc, (unsigned long)iwdev);
		status = FUNC4(msix_vec->irq, i40iw_irq_handler, 0, "AEQCEQ", iwdev);
	} else {
		FUNC5(&iwceq->dpc_tasklet, i40iw_ceq_dpc, (unsigned long)iwceq);
		status = FUNC4(msix_vec->irq, i40iw_ceq_handler, 0, "CEQ", iwceq);
	}

	FUNC0(&msix_vec->mask);
	FUNC1(msix_vec->cpu_affinity, &msix_vec->mask);
	FUNC3(msix_vec->irq, &msix_vec->mask);

	if (status) {
		FUNC2("ceq irq config fail\n");
		return I40IW_ERR_CONFIG;
	}
	msix_vec->ceq_id = ceq_id;

	return 0;
}