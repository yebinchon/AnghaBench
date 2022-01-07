
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* reset_state; int state; } ;
struct hnae3_handle {TYPE_2__ rinfo; int * priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int HNS_ROCE_RST_DIRECT_RETURN ;
 void* HNS_ROCE_STATE_RST_INIT ;
 void* HNS_ROCE_STATE_RST_INITED ;
 int __hns_roce_hw_v2_init_instance (struct hnae3_handle*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int hns_roce_hw_v2_reset_notify_init(struct hnae3_handle *handle)
{
 struct device *dev = &handle->pdev->dev;
 int ret;

 if (test_and_clear_bit(HNS_ROCE_RST_DIRECT_RETURN,
          &handle->rinfo.state)) {
  handle->rinfo.reset_state = HNS_ROCE_STATE_RST_INITED;
  return 0;
 }

 handle->rinfo.reset_state = HNS_ROCE_STATE_RST_INIT;

 dev_info(&handle->pdev->dev, "In reset process RoCE client reinit.\n");
 ret = __hns_roce_hw_v2_init_instance(handle);
 if (ret) {




  handle->priv = ((void*)0);
  dev_err(dev, "In reset process RoCE reinit failed %d.\n", ret);
 } else {
  handle->rinfo.reset_state = HNS_ROCE_STATE_RST_INITED;
  dev_info(dev, "Reset done, RoCE client reinit finished.\n");
 }

 return ret;
}
