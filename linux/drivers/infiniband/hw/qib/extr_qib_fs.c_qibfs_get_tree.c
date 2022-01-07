
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {TYPE_1__* root; } ;
struct TYPE_2__ {int d_sb; } ;


 int get_tree_single (struct fs_context*,int ) ;
 int qib_super ;
 int qibfs_fill_super ;

__attribute__((used)) static int qibfs_get_tree(struct fs_context *fc)
{
 int ret = get_tree_single(fc, qibfs_fill_super);
 if (ret == 0)
  qib_super = fc->root->d_sb;
 return ret;
}
