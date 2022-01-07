
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (char const*,struct dentry*) ;

struct dentry *
edac_debugfs_create_dir_at(const char *dirname, struct dentry *parent)
{
 return debugfs_create_dir(dirname, parent);
}
