
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {scalar_t__ back_dev; } ;
struct i40iw_device {int reset; int vsi; } ;


 int I40IW_PUDA_RSRC_TYPE_IEQ ;
 scalar_t__ i40iw_initialize_ieq (struct i40iw_device*) ;
 int i40iw_puda_dele_resources (int *,int ,int) ;
 int i40iw_request_reset (struct i40iw_device*) ;

void i40iw_reinitialize_ieq(struct i40iw_sc_dev *dev)
{
 struct i40iw_device *iwdev = (struct i40iw_device *)dev->back_dev;

 i40iw_puda_dele_resources(&iwdev->vsi, I40IW_PUDA_RSRC_TYPE_IEQ, 0);
 if (i40iw_initialize_ieq(iwdev)) {
  iwdev->reset = 1;
  i40iw_request_reset(iwdev);
 }
}
