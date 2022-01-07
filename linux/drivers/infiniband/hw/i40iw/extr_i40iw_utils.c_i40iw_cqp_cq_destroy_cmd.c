
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {scalar_t__ back_dev; } ;
struct i40iw_sc_cq {int dummy; } ;
struct i40iw_device {int dummy; } ;


 int i40iw_cq_wq_destroy (struct i40iw_device*,struct i40iw_sc_cq*) ;

void i40iw_cqp_cq_destroy_cmd(struct i40iw_sc_dev *dev, struct i40iw_sc_cq *cq)
{
 struct i40iw_device *iwdev = (struct i40iw_device *)dev->back_dev;

 i40iw_cq_wq_destroy(iwdev, cq);
}
