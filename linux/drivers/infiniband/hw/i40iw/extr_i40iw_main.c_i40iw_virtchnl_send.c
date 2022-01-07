
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40iw_sc_dev {struct i40iw_device* back_dev; } ;
struct i40iw_device {struct i40e_info* ldev; } ;
struct i40e_info {TYPE_1__* ops; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int (* virtchnl_send ) (struct i40e_info*,int *,int ,int *,int ) ;} ;


 int I40IW_ERR_BAD_PTR ;
 int i40iw_client ;
 int stub1 (struct i40e_info*,int *,int ,int *,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_virtchnl_send(struct i40iw_sc_dev *dev,
        u32 vf_id,
        u8 *msg,
        u16 len)
{
 struct i40iw_device *iwdev;
 struct i40e_info *ldev;

 if (!dev || !dev->back_dev)
  return I40IW_ERR_BAD_PTR;

 iwdev = dev->back_dev;
 ldev = iwdev->ldev;

 if (ldev && ldev->ops && ldev->ops->virtchnl_send)
  return ldev->ops->virtchnl_send(ldev, &i40iw_client, vf_id, msg, len);
 return I40IW_ERR_BAD_PTR;
}
