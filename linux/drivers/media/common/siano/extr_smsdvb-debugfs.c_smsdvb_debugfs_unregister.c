
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int *) ;
 int * smsdvb_debugfs_usb_root ;

void smsdvb_debugfs_unregister(void)
{
 if (!smsdvb_debugfs_usb_root)
  return;
 debugfs_remove_recursive(smsdvb_debugfs_usb_root);
 smsdvb_debugfs_usb_root = ((void*)0);
}
