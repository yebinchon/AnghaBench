
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sec4_sg_entry {int dummy; } ;
struct device {int dummy; } ;
struct caam_hash_state {int ctx_dma_len; scalar_t__ ctx_dma; int caam_ctx; } ;


 int ENOMEM ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dma_map_single (struct device*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_to_sec4_sg_one (struct sec4_sg_entry*,scalar_t__,int,int ) ;

__attribute__((used)) static inline int ctx_map_to_sec4_sg(struct device *jrdev,
         struct caam_hash_state *state, int ctx_len,
         struct sec4_sg_entry *sec4_sg, u32 flag)
{
 state->ctx_dma_len = ctx_len;
 state->ctx_dma = dma_map_single(jrdev, state->caam_ctx, ctx_len, flag);
 if (dma_mapping_error(jrdev, state->ctx_dma)) {
  dev_err(jrdev, "unable to map ctx\n");
  state->ctx_dma = 0;
  return -ENOMEM;
 }

 dma_to_sec4_sg_one(sec4_sg, state->ctx_dma, ctx_len, 0);

 return 0;
}
