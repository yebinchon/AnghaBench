
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int * debugfs_create_dir (char*,int *) ;
 int debugfs_initialized () ;
 int * hzip_debugfs_root ;

__attribute__((used)) static void hisi_zip_register_debugfs(void)
{
 if (!debugfs_initialized())
  return;

 hzip_debugfs_root = debugfs_create_dir("hisi_zip", ((void*)0));
 if (IS_ERR_OR_NULL(hzip_debugfs_root))
  hzip_debugfs_root = ((void*)0);
}
