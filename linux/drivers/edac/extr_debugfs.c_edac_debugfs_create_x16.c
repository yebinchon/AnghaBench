
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u16 ;
struct dentry {int dummy; } ;


 int debugfs_create_x16 (char const*,int ,struct dentry*,int *) ;
 struct dentry* edac_debugfs ;

void edac_debugfs_create_x16(const char *name, umode_t mode,
        struct dentry *parent, u16 *value)
{
 if (!parent)
  parent = edac_debugfs;

 debugfs_create_x16(name, mode, parent, value);
}
