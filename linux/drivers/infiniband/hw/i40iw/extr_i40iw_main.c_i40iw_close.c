
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int closing; int reset; int virtchnl_wq; } ;
struct i40iw_handler {struct i40iw_device device; } ;
struct i40e_info {int dummy; } ;
struct i40e_client {int dummy; } ;


 int destroy_workqueue (int ) ;
 int i40iw_cm_teardown_connections (struct i40iw_device*,int *,int *,int) ;
 int i40iw_deinit_device (struct i40iw_device*) ;
 struct i40iw_handler* i40iw_find_i40e_handler (struct i40e_info*) ;

__attribute__((used)) static void i40iw_close(struct i40e_info *ldev, struct i40e_client *client, bool reset)
{
 struct i40iw_device *iwdev;
 struct i40iw_handler *hdl;

 hdl = i40iw_find_i40e_handler(ldev);
 if (!hdl)
  return;

 iwdev = &hdl->device;
 iwdev->closing = 1;

 if (reset)
  iwdev->reset = 1;

 i40iw_cm_teardown_connections(iwdev, ((void*)0), ((void*)0), 1);
 destroy_workqueue(iwdev->virtchnl_wq);
 i40iw_deinit_device(iwdev);
}
