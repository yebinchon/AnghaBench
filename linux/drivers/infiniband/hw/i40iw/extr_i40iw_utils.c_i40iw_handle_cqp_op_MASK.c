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
struct i40iw_sc_dev {int dummy; } ;
struct i40iw_device {int /*<<< orphan*/  cqp; scalar_t__ reset; struct i40iw_sc_dev sc_dev; } ;
struct cqp_commands_info {int /*<<< orphan*/  cqp_cmd; } ;
struct i40iw_cqp_request {scalar_t__ waiting; struct cqp_commands_info info; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ERR_CQP_COMPL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct i40iw_cqp_request*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i40iw_sc_dev*,struct cqp_commands_info*) ; 
 int FUNC3 (struct i40iw_device*,struct i40iw_cqp_request*) ; 

enum i40iw_status_code FUNC4(struct i40iw_device *iwdev,
					   struct i40iw_cqp_request
					   *cqp_request)
{
	struct i40iw_sc_dev *dev = &iwdev->sc_dev;
	enum i40iw_status_code status;
	struct cqp_commands_info *info = &cqp_request->info;
	int err_code = 0;

	if (iwdev->reset) {
		FUNC0(&iwdev->cqp, cqp_request);
		return I40IW_ERR_CQP_COMPL_ERROR;
	}

	status = FUNC2(dev, info);
	if (status) {
		FUNC1("error cqp command 0x%x failed\n", info->cqp_cmd);
		FUNC0(&iwdev->cqp, cqp_request);
		return status;
	}
	if (cqp_request->waiting)
		err_code = FUNC3(iwdev, cqp_request);
	if (err_code)
		status = I40IW_ERR_CQP_COMPL_ERROR;
	return status;
}