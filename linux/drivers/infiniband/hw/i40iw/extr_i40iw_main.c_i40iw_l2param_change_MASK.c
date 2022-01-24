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
struct i40iw_l2params {scalar_t__ mtu; int /*<<< orphan*/ * qs_handle_list; } ;
struct l2params_work {int /*<<< orphan*/  work; struct i40iw_l2params l2params; struct i40iw_device* iwdev; } ;
struct TYPE_6__ {scalar_t__ mtu; } ;
struct i40iw_device {int /*<<< orphan*/  param_wq; TYPE_3__ vsi; int /*<<< orphan*/  params_busy; } ;
struct i40iw_handler {struct i40iw_device device; } ;
struct TYPE_5__ {TYPE_1__* prio_qos; } ;
struct i40e_params {scalar_t__ mtu; TYPE_2__ qos; } ;
struct i40e_info {int dummy; } ;
struct i40e_client {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  qs_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40E_CLIENT_MAX_USER_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct i40iw_handler* FUNC3 (struct i40e_info*) ; 
 int /*<<< orphan*/  i40iw_l2params_worker ; 
 struct l2params_work* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct i40e_info *ldev, struct i40e_client *client,
				 struct i40e_params *params)
{
	struct i40iw_handler *hdl;
	struct i40iw_l2params *l2params;
	struct l2params_work *work;
	struct i40iw_device *iwdev;
	int i;

	hdl = FUNC3(ldev);
	if (!hdl)
		return;

	iwdev = &hdl->device;

	if (FUNC2(&iwdev->params_busy))
		return;


	work = FUNC4(sizeof(*work), GFP_KERNEL);
	if (!work)
		return;

	FUNC1(&iwdev->params_busy);

	work->iwdev = iwdev;
	l2params = &work->l2params;
	for (i = 0; i < I40E_CLIENT_MAX_USER_PRIORITY; i++)
		l2params->qs_handle_list[i] = params->qos.prio_qos[i].qs_handle;

	l2params->mtu = (params->mtu) ? params->mtu : iwdev->vsi.mtu;

	FUNC0(&work->work, i40iw_l2params_worker);
	FUNC5(iwdev->param_wq, &work->work);
}