
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct caam_hash_state {int ctx_dma_len; scalar_t__ ctx_dma; int caam_ctx; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int append_seq_out_ptr (int *,scalar_t__,int,int ) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dma_map_single (struct device*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;

__attribute__((used)) static inline int map_seq_out_ptr_ctx(u32 *desc, struct device *jrdev,
          struct caam_hash_state *state,
          int ctx_len)
{
 state->ctx_dma_len = ctx_len;
 state->ctx_dma = dma_map_single(jrdev, state->caam_ctx,
     ctx_len, DMA_FROM_DEVICE);
 if (dma_mapping_error(jrdev, state->ctx_dma)) {
  dev_err(jrdev, "unable to map ctx\n");
  state->ctx_dma = 0;
  return -ENOMEM;
 }

 append_seq_out_ptr(desc, state->ctx_dma, ctx_len, 0);

 return 0;
}
