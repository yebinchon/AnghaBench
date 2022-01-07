
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_fs_context {int * dops; } ;
struct fs_context {int dummy; } ;


 int DMA_BUF_MAGIC ;
 int ENOMEM ;
 int dma_buf_dentry_ops ;
 struct pseudo_fs_context* init_pseudo (struct fs_context*,int ) ;

__attribute__((used)) static int dma_buf_fs_init_context(struct fs_context *fc)
{
 struct pseudo_fs_context *ctx;

 ctx = init_pseudo(fc, DMA_BUF_MAGIC);
 if (!ctx)
  return -ENOMEM;
 ctx->dops = &dma_buf_dentry_ops;
 return 0;
}
