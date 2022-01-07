
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;int provider_data; int device; } ;
struct i40iw_device {int cm_core; } ;


 int i40iw_cm_del_listen (int *,int ,int) ;
 int i40iw_pr_err (char*) ;
 int stub1 (struct iw_cm_id*) ;
 struct i40iw_device* to_iwdev (int ) ;

int i40iw_destroy_listen(struct iw_cm_id *cm_id)
{
 struct i40iw_device *iwdev;

 iwdev = to_iwdev(cm_id->device);
 if (cm_id->provider_data)
  i40iw_cm_del_listen(&iwdev->cm_core, cm_id->provider_data, 1);
 else
  i40iw_pr_err("cm_id->provider_data was NULL\n");

 cm_id->rem_ref(cm_id);

 return 0;
}
