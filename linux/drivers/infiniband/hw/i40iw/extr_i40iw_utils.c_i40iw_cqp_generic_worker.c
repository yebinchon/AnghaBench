
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct i40iw_virtchnl_work_info {scalar_t__ worker_vf_dev; int (* callback_fcn ) (scalar_t__) ;} ;
struct virtchnl_work {struct i40iw_virtchnl_work_info work_info; } ;


 int stub1 (scalar_t__) ;

__attribute__((used)) static void i40iw_cqp_generic_worker(struct work_struct *work)
{
 struct i40iw_virtchnl_work_info *work_info =
     &((struct virtchnl_work *)work)->work_info;

 if (work_info->worker_vf_dev)
  work_info->callback_fcn(work_info->worker_vf_dev);
}
