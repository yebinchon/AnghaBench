
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int index; void* debugfs; } ;


 int MAX_NAME_LEN ;
 void* amd_iommu_debugfs ;
 int amd_iommu_debugfs_lock ;
 void* debugfs_create_dir (char*,void*) ;
 void* iommu_debugfs_dir ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;

void amd_iommu_debugfs_setup(struct amd_iommu *iommu)
{
 char name[MAX_NAME_LEN + 1];

 mutex_lock(&amd_iommu_debugfs_lock);
 if (!amd_iommu_debugfs)
  amd_iommu_debugfs = debugfs_create_dir("amd",
             iommu_debugfs_dir);
 mutex_unlock(&amd_iommu_debugfs_lock);

 snprintf(name, MAX_NAME_LEN, "iommu%02d", iommu->index);
 iommu->debugfs = debugfs_create_dir(name, amd_iommu_debugfs);
}
