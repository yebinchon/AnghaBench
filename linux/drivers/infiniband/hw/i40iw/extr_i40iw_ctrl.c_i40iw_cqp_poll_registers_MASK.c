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
typedef  scalar_t__ u32 ;
struct i40iw_sc_cqp {TYPE_1__* dev; int /*<<< orphan*/  sq_ring; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int /*<<< orphan*/ * cqp_cmd_stats; int /*<<< orphan*/  hw; scalar_t__ is_pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_PFPE_CQPERRCODES ; 
 int /*<<< orphan*/  I40E_VFPE_CQPERRCODES1 ; 
 int I40IW_ERR_CQP_COMPL_ERROR ; 
 int I40IW_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40IW_SLEEP_COUNT ; 
 size_t OP_COMPLETED_COMMANDS ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC4(
						struct i40iw_sc_cqp *cqp,
						u32 tail,
						u32 count)
{
	u32 i = 0;
	u32 newtail, error, val;

	while (i < count) {
		i++;
		FUNC1(cqp, &val, &newtail, &error);
		if (error) {
			error = (cqp->dev->is_pf) ?
				 FUNC2(cqp->dev->hw, I40E_PFPE_CQPERRCODES) :
				 FUNC2(cqp->dev->hw, I40E_VFPE_CQPERRCODES1);
			return I40IW_ERR_CQP_COMPL_ERROR;
		}
		if (newtail != tail) {
			/* SUCCESS */
			FUNC0(cqp->sq_ring);
			cqp->dev->cqp_cmd_stats[OP_COMPLETED_COMMANDS]++;
			return 0;
		}
		FUNC3(I40IW_SLEEP_COUNT);
	}
	return I40IW_ERR_TIMEOUT;
}