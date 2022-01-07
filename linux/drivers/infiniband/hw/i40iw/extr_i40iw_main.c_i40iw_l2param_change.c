
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40iw_l2params {scalar_t__ mtu; int * qs_handle_list; } ;
struct l2params_work {int work; struct i40iw_l2params l2params; struct i40iw_device* iwdev; } ;
struct TYPE_6__ {scalar_t__ mtu; } ;
struct i40iw_device {int param_wq; TYPE_3__ vsi; int params_busy; } ;
struct i40iw_handler {struct i40iw_device device; } ;
struct TYPE_5__ {TYPE_1__* prio_qos; } ;
struct i40e_params {scalar_t__ mtu; TYPE_2__ qos; } ;
struct i40e_info {int dummy; } ;
struct i40e_client {int dummy; } ;
struct TYPE_4__ {int qs_handle; } ;


 int GFP_KERNEL ;
 int I40E_CLIENT_MAX_USER_PRIORITY ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct i40iw_handler* i40iw_find_i40e_handler (struct i40e_info*) ;
 int i40iw_l2params_worker ;
 struct l2params_work* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void i40iw_l2param_change(struct i40e_info *ldev, struct i40e_client *client,
     struct i40e_params *params)
{
 struct i40iw_handler *hdl;
 struct i40iw_l2params *l2params;
 struct l2params_work *work;
 struct i40iw_device *iwdev;
 int i;

 hdl = i40iw_find_i40e_handler(ldev);
 if (!hdl)
  return;

 iwdev = &hdl->device;

 if (atomic_read(&iwdev->params_busy))
  return;


 work = kzalloc(sizeof(*work), GFP_KERNEL);
 if (!work)
  return;

 atomic_inc(&iwdev->params_busy);

 work->iwdev = iwdev;
 l2params = &work->l2params;
 for (i = 0; i < I40E_CLIENT_MAX_USER_PRIORITY; i++)
  l2params->qs_handle_list[i] = params->qos.prio_qos[i].qs_handle;

 l2params->mtu = (params->mtu) ? params->mtu : iwdev->vsi.mtu;

 INIT_WORK(&work->work, i40iw_l2params_worker);
 queue_work(iwdev->param_wq, &work->work);
}
