
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int * ops; } ;
struct fs_context {int dummy; } ;


 int DAXFS_MAGIC ;
 int ENOMEM ;
 int dax_sops ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;

__attribute__((used)) static int dax_init_fs_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx = init_pseudo(fc, DAXFS_MAGIC);
 if (!ctx)
  return -ENOMEM;
 ctx->ops = &dax_sops;
 return 0;
}
