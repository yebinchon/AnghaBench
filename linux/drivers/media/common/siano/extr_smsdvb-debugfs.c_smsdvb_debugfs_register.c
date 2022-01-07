
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int pr_err (char*) ;
 struct dentry* smsdvb_debugfs_usb_root ;
 int usb_debug_root ;

void smsdvb_debugfs_register(void)
{
 struct dentry *d;
 d = debugfs_create_dir("smsdvb", usb_debug_root);
 if (IS_ERR_OR_NULL(d)) {
  pr_err("Couldn't create sysfs node for smsdvb\n");
  return;
 }
 smsdvb_debugfs_usb_root = d;
}
