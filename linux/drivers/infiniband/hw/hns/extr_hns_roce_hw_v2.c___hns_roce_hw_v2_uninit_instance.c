
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int ib_dev; int priv; } ;
struct hnae3_handle {int * priv; } ;


 int hns_roce_exit (struct hns_roce_dev*) ;
 int ib_dealloc_device (int *) ;
 int kfree (int ) ;

__attribute__((used)) static void __hns_roce_hw_v2_uninit_instance(struct hnae3_handle *handle,
        bool reset)
{
 struct hns_roce_dev *hr_dev = (struct hns_roce_dev *)handle->priv;

 if (!hr_dev)
  return;

 handle->priv = ((void*)0);
 hns_roce_exit(hr_dev);
 kfree(hr_dev->priv);
 ib_dealloc_device(&hr_dev->ib_dev);
}
