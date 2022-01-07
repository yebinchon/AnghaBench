
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DRV_NAME ;
 int S_IRUGO ;
 void* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int ,int *,int *,int *) ;
 int * debugfs_root ;
 void* flows_dentry ;
 int usnic_debugfs_buildinfo_ops ;

void usnic_debugfs_init(void)
{
 debugfs_root = debugfs_create_dir(DRV_NAME, ((void*)0));

 flows_dentry = debugfs_create_dir("flows", debugfs_root);

 debugfs_create_file("build-info", S_IRUGO, debugfs_root,
    ((void*)0), &usnic_debugfs_buildinfo_ops);
}
