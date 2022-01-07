
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct caam_rng_ctx {int sh_desc_dma; int * sh_desc; struct device* jrdev; } ;


 int DMA_TO_DEVICE ;
 int DUMP_PREFIX_ADDRESS ;
 int ENOMEM ;
 int FIFOST_TYPE_RNGSTORE ;
 int HDR_SHARE_SERIAL ;
 int OP_ALG_ALGSEL_RNG ;
 int OP_TYPE_CLASS1_ALG ;
 int RN_BUF_SIZE ;
 int append_operation (int *,int) ;
 int append_seq_fifo_store (int *,int ,int ) ;
 int desc_bytes (int *) ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int init_sh_desc (int *,int ) ;
 int print_hex_dump_debug (char*,int ,int,int,int *,int ,int) ;

__attribute__((used)) static inline int rng_create_sh_desc(struct caam_rng_ctx *ctx)
{
 struct device *jrdev = ctx->jrdev;
 u32 *desc = ctx->sh_desc;

 init_sh_desc(desc, HDR_SHARE_SERIAL);


 append_operation(desc, OP_ALG_ALGSEL_RNG | OP_TYPE_CLASS1_ALG);


 append_seq_fifo_store(desc, RN_BUF_SIZE, FIFOST_TYPE_RNGSTORE);

 ctx->sh_desc_dma = dma_map_single(jrdev, desc, desc_bytes(desc),
       DMA_TO_DEVICE);
 if (dma_mapping_error(jrdev, ctx->sh_desc_dma)) {
  dev_err(jrdev, "unable to map shared descriptor\n");
  return -ENOMEM;
 }

 print_hex_dump_debug("rng shdesc@: ", DUMP_PREFIX_ADDRESS, 16, 4,
        desc, desc_bytes(desc), 1);

 return 0;
}
