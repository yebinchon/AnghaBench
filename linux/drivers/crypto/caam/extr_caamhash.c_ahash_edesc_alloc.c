
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sec4_sg_entry {int dummy; } ;
struct caam_hash_ctx {int jrdev; } ;
struct ahash_edesc {int hw_desc; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int GFP_DMA ;
 int HDR_REVERSE ;
 int HDR_SHARE_DEFER ;
 int desc_len (int *) ;
 int dev_err (int ,char*) ;
 int init_job_desc_shared (int ,int ,int ,int) ;
 struct ahash_edesc* kzalloc (int,int) ;

__attribute__((used)) static struct ahash_edesc *ahash_edesc_alloc(struct caam_hash_ctx *ctx,
          int sg_num, u32 *sh_desc,
          dma_addr_t sh_desc_dma,
          gfp_t flags)
{
 struct ahash_edesc *edesc;
 unsigned int sg_size = sg_num * sizeof(struct sec4_sg_entry);

 edesc = kzalloc(sizeof(*edesc) + sg_size, GFP_DMA | flags);
 if (!edesc) {
  dev_err(ctx->jrdev, "could not allocate extended descriptor\n");
  return ((void*)0);
 }

 init_job_desc_shared(edesc->hw_desc, sh_desc_dma, desc_len(sh_desc),
        HDR_SHARE_DEFER | HDR_REVERSE);

 return edesc;
}
