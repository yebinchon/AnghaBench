
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int iommu_dev; int fid; } ;


 int iommu_device_register (int *) ;
 int iommu_device_set_ops (int *,int *) ;
 int iommu_device_sysfs_add (int *,int *,int *,char*,int ) ;
 int iommu_device_sysfs_remove (int *) ;
 int s390_iommu_ops ;

int zpci_init_iommu(struct zpci_dev *zdev)
{
 int rc = 0;

 rc = iommu_device_sysfs_add(&zdev->iommu_dev, ((void*)0), ((void*)0),
        "s390-iommu.%08x", zdev->fid);
 if (rc)
  goto out_err;

 iommu_device_set_ops(&zdev->iommu_dev, &s390_iommu_ops);

 rc = iommu_device_register(&zdev->iommu_dev);
 if (rc)
  goto out_sysfs;

 return 0;

out_sysfs:
 iommu_device_sysfs_remove(&zdev->iommu_dev);

out_err:
 return rc;
}
