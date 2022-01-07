
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int hzip_debugfs_root ;

__attribute__((used)) static void hisi_zip_unregister_debugfs(void)
{
 debugfs_remove_recursive(hzip_debugfs_root);
}
