
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_v2_priv {int dummy; } ;
struct hns_roce_dev {int ib_dev; int priv; int * dev; TYPE_1__* pci_dev; } ;
struct hnae3_handle {struct hns_roce_dev* priv; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int hns_roce_dev ;
 int hns_roce_hw_v2_get_cfg (struct hns_roce_dev*,struct hnae3_handle*) ;
 int hns_roce_init (struct hns_roce_dev*) ;
 struct hns_roce_dev* ib_alloc_device (int ,int ) ;
 int ib_dealloc_device (int *) ;
 int ib_dev ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;

__attribute__((used)) static int __hns_roce_hw_v2_init_instance(struct hnae3_handle *handle)
{
 struct hns_roce_dev *hr_dev;
 int ret;

 hr_dev = ib_alloc_device(hns_roce_dev, ib_dev);
 if (!hr_dev)
  return -ENOMEM;

 hr_dev->priv = kzalloc(sizeof(struct hns_roce_v2_priv), GFP_KERNEL);
 if (!hr_dev->priv) {
  ret = -ENOMEM;
  goto error_failed_kzalloc;
 }

 hr_dev->pci_dev = handle->pdev;
 hr_dev->dev = &handle->pdev->dev;

 ret = hns_roce_hw_v2_get_cfg(hr_dev, handle);
 if (ret) {
  dev_err(hr_dev->dev, "Get Configuration failed!\n");
  goto error_failed_get_cfg;
 }

 ret = hns_roce_init(hr_dev);
 if (ret) {
  dev_err(hr_dev->dev, "RoCE Engine init failed!\n");
  goto error_failed_get_cfg;
 }

 handle->priv = hr_dev;

 return 0;

error_failed_get_cfg:
 kfree(hr_dev->priv);

error_failed_kzalloc:
 ib_dealloc_device(&hr_dev->ib_dev);

 return ret;
}
