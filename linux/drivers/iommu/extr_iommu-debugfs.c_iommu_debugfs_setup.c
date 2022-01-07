
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debugfs_create_dir (char*,int *) ;
 scalar_t__ iommu_debugfs_dir ;
 int pr_warn (char*) ;

void iommu_debugfs_setup(void)
{
 if (!iommu_debugfs_dir) {
  iommu_debugfs_dir = debugfs_create_dir("iommu", ((void*)0));
  pr_warn("\n");
  pr_warn("*************************************************************\n");
  pr_warn("**     NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE    **\n");
  pr_warn("**                                                         **\n");
  pr_warn("**  IOMMU DebugFS SUPPORT HAS BEEN ENABLED IN THIS KERNEL  **\n");
  pr_warn("**                                                         **\n");
  pr_warn("** This means that this kernel is built to expose internal **\n");
  pr_warn("** IOMMU data structures, which may compromise security on **\n");
  pr_warn("** your system.                                            **\n");
  pr_warn("**                                                         **\n");
  pr_warn("** If you see this message and you are not debugging the   **\n");
  pr_warn("** kernel, report this immediately to your vendor!         **\n");
  pr_warn("**                                                         **\n");
  pr_warn("**     NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE    **\n");
  pr_warn("*************************************************************\n");
 }
}
