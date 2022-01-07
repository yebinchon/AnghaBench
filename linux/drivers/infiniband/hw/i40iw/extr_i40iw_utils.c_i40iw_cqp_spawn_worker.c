
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct virtchnl_work {int work; int work_info; } ;
struct i40iw_virtchnl_work_info {int dummy; } ;
struct i40iw_sc_dev {scalar_t__ back_dev; } ;
struct i40iw_device {int virtchnl_wq; struct virtchnl_work* virtchnl_w; } ;


 int INIT_WORK (int *,int ) ;
 int i40iw_cqp_generic_worker ;
 int memcpy (int *,struct i40iw_virtchnl_work_info*,int) ;
 int queue_work (int ,int *) ;

void i40iw_cqp_spawn_worker(struct i40iw_sc_dev *dev,
       struct i40iw_virtchnl_work_info *work_info,
       u32 iw_vf_idx)
{
 struct virtchnl_work *work;
 struct i40iw_device *iwdev = (struct i40iw_device *)dev->back_dev;

 work = &iwdev->virtchnl_w[iw_vf_idx];
 memcpy(&work->work_info, work_info, sizeof(*work_info));
 INIT_WORK(&work->work, i40iw_cqp_generic_worker);
 queue_work(iwdev->virtchnl_wq, &work->work);
}
