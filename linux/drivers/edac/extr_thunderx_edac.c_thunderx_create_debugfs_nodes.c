
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct debugfs_entry {int fops; int mode; int name; } ;


 int CONFIG_EDAC_DEBUG ;
 int ENOENT ;
 int IS_ENABLED (int ) ;
 struct dentry* edac_debugfs_create_file (int ,int ,struct dentry*,void*,int *) ;

__attribute__((used)) static int thunderx_create_debugfs_nodes(struct dentry *parent,
       struct debugfs_entry *attrs[],
       void *data,
       size_t num)
{
 int i;
 struct dentry *ent;

 if (!IS_ENABLED(CONFIG_EDAC_DEBUG))
  return 0;

 if (!parent)
  return -ENOENT;

 for (i = 0; i < num; i++) {
  ent = edac_debugfs_create_file(attrs[i]->name, attrs[i]->mode,
            parent, data, &attrs[i]->fops);

  if (!ent)
   break;
 }

 return i;
}
