
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct caam_rng_ctx {int sh_desc_dma; int sh_desc; struct buf_data* bufs; struct device* jrdev; } ;
struct buf_data {int addr; int buf; int * hw_desc; } ;


 int DMA_FROM_DEVICE ;
 int DUMP_PREFIX_ADDRESS ;
 int ENOMEM ;
 int HDR_REVERSE ;
 int HDR_SHARE_DEFER ;
 int RN_BUF_SIZE ;
 int append_seq_out_ptr_intlen (int *,int ,int ,int ) ;
 int desc_bytes (int *) ;
 int desc_len (int ) ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int init_job_desc_shared (int *,int ,int,int) ;
 int print_hex_dump_debug (char*,int ,int,int,int *,int ,int) ;

__attribute__((used)) static inline int rng_create_job_desc(struct caam_rng_ctx *ctx, int buf_id)
{
 struct device *jrdev = ctx->jrdev;
 struct buf_data *bd = &ctx->bufs[buf_id];
 u32 *desc = bd->hw_desc;
 int sh_len = desc_len(ctx->sh_desc);

 init_job_desc_shared(desc, ctx->sh_desc_dma, sh_len, HDR_SHARE_DEFER |
        HDR_REVERSE);

 bd->addr = dma_map_single(jrdev, bd->buf, RN_BUF_SIZE, DMA_FROM_DEVICE);
 if (dma_mapping_error(jrdev, bd->addr)) {
  dev_err(jrdev, "unable to map dst\n");
  return -ENOMEM;
 }

 append_seq_out_ptr_intlen(desc, bd->addr, RN_BUF_SIZE, 0);

 print_hex_dump_debug("rng job desc@: ", DUMP_PREFIX_ADDRESS, 16, 4,
        desc, desc_bytes(desc), 1);

 return 0;
}
