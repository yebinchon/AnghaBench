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
struct i40iw_update_sds_info {int dummy; } ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; } ;
struct i40iw_sc_cqp {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_DONE_COUNT ; 
 int I40IW_ERR_CQP_COMPL_ERROR ; 
 int FUNC0 (struct i40iw_sc_cqp*,struct i40iw_update_sds_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40iw_sc_cqp*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_cqp*) ; 

enum i40iw_status_code FUNC4(struct i40iw_sc_dev *dev,
					      struct i40iw_update_sds_info *info)
{
	u32 error, val, tail;
	struct i40iw_sc_cqp *cqp = dev->cqp;
	enum i40iw_status_code ret_code;

	ret_code = FUNC0(cqp, info, 0);
	if (ret_code)
		return ret_code;
	FUNC2(cqp, &val, &tail, &error);
	if (error)
		return I40IW_ERR_CQP_COMPL_ERROR;

	FUNC3(cqp);
	ret_code = FUNC1(cqp, tail, I40IW_DONE_COUNT);

	return ret_code;
}