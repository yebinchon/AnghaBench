
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IFREG ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int debugfs_root ;
 int kfd_debugfs_fops ;
 int kfd_debugfs_hang_hws_fops ;
 int * kfd_debugfs_hqds_by_device ;
 int * kfd_debugfs_mqds_by_process ;
 int * kfd_debugfs_rls_by_device ;

void kfd_debugfs_init(void)
{
 debugfs_root = debugfs_create_dir("kfd", ((void*)0));

 debugfs_create_file("mqds", S_IFREG | 0444, debugfs_root,
       kfd_debugfs_mqds_by_process, &kfd_debugfs_fops);
 debugfs_create_file("hqds", S_IFREG | 0444, debugfs_root,
       kfd_debugfs_hqds_by_device, &kfd_debugfs_fops);
 debugfs_create_file("rls", S_IFREG | 0444, debugfs_root,
       kfd_debugfs_rls_by_device, &kfd_debugfs_fops);
 debugfs_create_file("hang_hws", S_IFREG | 0644, debugfs_root,
       ((void*)0), &kfd_debugfs_hang_hws_fops);
}
