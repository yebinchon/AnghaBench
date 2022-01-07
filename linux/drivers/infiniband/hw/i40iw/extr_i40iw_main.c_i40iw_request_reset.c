
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_device {int client; struct i40e_info* ldev; } ;
struct i40e_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* request_reset ) (struct i40e_info*,int ,int) ;} ;


 int stub1 (struct i40e_info*,int ,int) ;

void i40iw_request_reset(struct i40iw_device *iwdev)
{
 struct i40e_info *ldev = iwdev->ldev;

 ldev->ops->request_reset(ldev, iwdev->client, 1);
}
