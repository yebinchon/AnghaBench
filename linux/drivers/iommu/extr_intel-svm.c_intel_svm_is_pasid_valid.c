
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_svm {TYPE_1__* mm; } ;
struct intel_iommu {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int mm_users; } ;


 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 struct intel_svm* intel_pasid_lookup_id (int) ;
 struct intel_iommu* intel_svm_device_to_iommu (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pasid_mutex ;

int intel_svm_is_pasid_valid(struct device *dev, int pasid)
{
 struct intel_iommu *iommu;
 struct intel_svm *svm;
 int ret = -EINVAL;

 mutex_lock(&pasid_mutex);
 iommu = intel_svm_device_to_iommu(dev);
 if (!iommu)
  goto out;

 svm = intel_pasid_lookup_id(pasid);
 if (!svm)
  goto out;


 if (!svm->mm)
  ret = 1;
 else if (atomic_read(&svm->mm->mm_users) > 0)
  ret = 1;
 else
  ret = 0;

 out:
 mutex_unlock(&pasid_mutex);

 return ret;
}
