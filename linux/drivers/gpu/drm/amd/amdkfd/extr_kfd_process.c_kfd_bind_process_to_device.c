
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {int dummy; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;


 int ENOMEM ;
 struct kfd_process_device* ERR_PTR (int) ;
 struct kfd_process_device* kfd_get_process_device_data (struct kfd_dev*,struct kfd_process*) ;
 int kfd_iommu_bind_process_to_device (struct kfd_process_device*) ;
 int kfd_process_device_init_vm (struct kfd_process_device*,int *) ;
 int pr_err (char*) ;

struct kfd_process_device *kfd_bind_process_to_device(struct kfd_dev *dev,
       struct kfd_process *p)
{
 struct kfd_process_device *pdd;
 int err;

 pdd = kfd_get_process_device_data(dev, p);
 if (!pdd) {
  pr_err("Process device data doesn't exist\n");
  return ERR_PTR(-ENOMEM);
 }

 err = kfd_iommu_bind_process_to_device(pdd);
 if (err)
  return ERR_PTR(err);

 err = kfd_process_device_init_vm(pdd, ((void*)0));
 if (err)
  return ERR_PTR(err);

 return pdd;
}
