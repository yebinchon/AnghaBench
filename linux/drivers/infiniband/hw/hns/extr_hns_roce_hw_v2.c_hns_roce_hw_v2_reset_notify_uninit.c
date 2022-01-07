
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reset_state; int state; } ;
struct hnae3_handle {TYPE_2__* pdev; TYPE_1__ rinfo; } ;
struct TYPE_4__ {int dev; } ;


 int HNS_ROCE_RST_DIRECT_RETURN ;
 int HNS_ROCE_STATE_RST_UNINIT ;
 int HNS_ROCE_V2_HW_RST_UNINT_DELAY ;
 int __hns_roce_hw_v2_uninit_instance (struct hnae3_handle*,int) ;
 int dev_info (int *,char*) ;
 int msleep (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hns_roce_hw_v2_reset_notify_uninit(struct hnae3_handle *handle)
{
 if (test_bit(HNS_ROCE_RST_DIRECT_RETURN, &handle->rinfo.state))
  return 0;

 handle->rinfo.reset_state = HNS_ROCE_STATE_RST_UNINIT;
 dev_info(&handle->pdev->dev, "In reset process RoCE client uninit.\n");
 msleep(HNS_ROCE_V2_HW_RST_UNINT_DELAY);
 __hns_roce_hw_v2_uninit_instance(handle, 0);

 return 0;
}
