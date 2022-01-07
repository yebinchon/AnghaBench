
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int ) ;
 int ipoib_root ;

void ipoib_unregister_debugfs(void)
{
 debugfs_remove(ipoib_root);
}
