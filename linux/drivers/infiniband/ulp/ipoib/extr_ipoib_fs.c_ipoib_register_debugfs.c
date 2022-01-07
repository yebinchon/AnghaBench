
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int ipoib_root ;

void ipoib_register_debugfs(void)
{
 ipoib_root = debugfs_create_dir("ipoib", ((void*)0));
}
