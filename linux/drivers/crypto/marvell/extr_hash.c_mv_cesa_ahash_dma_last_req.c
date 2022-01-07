
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_tdma_chain {int dummy; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_dma_req {scalar_t__ padding_dma; int padding; } ;
struct TYPE_2__ {struct mv_cesa_ahash_dma_req dma; } ;
struct mv_cesa_ahash_req {int op_tmpl; int len; TYPE_1__ req; } ;
struct mv_cesa_ahash_dma_iter {int dummy; } ;
typedef int gfp_t ;


 int CESA_SA_CFG_SRAM_OFFSET ;
 scalar_t__ CESA_SA_DATA_SRAM_OFFSET ;
 int CESA_SA_DESC_CFG_FRAG_MSK ;
 int CESA_SA_DESC_CFG_LAST_FRAG ;
 int CESA_SA_DESC_CFG_NOT_FRAG ;
 int CESA_SA_DESC_MAC_SRC_TOTAL_LEN_MAX ;
 scalar_t__ CESA_SA_SRAM_PAYLOAD_SIZE ;
 int CESA_TDMA_DST_IN_SRAM ;
 int CESA_TDMA_SRC_IN_SRAM ;
 int ENOMEM ;
 struct mv_cesa_op_ctx* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mv_cesa_op_ctx*) ;
 unsigned int min (scalar_t__,unsigned int) ;
 int mv_cesa_ahash_dma_alloc_padding (struct mv_cesa_ahash_dma_req*,int ) ;
 unsigned int mv_cesa_ahash_pad_req (struct mv_cesa_ahash_req*,int ) ;
 int mv_cesa_dma_add_data_transfer (struct mv_cesa_tdma_chain*,scalar_t__,scalar_t__,unsigned int,int ,int ) ;
 struct mv_cesa_op_ctx* mv_cesa_dma_add_frag (struct mv_cesa_tdma_chain*,int *,unsigned int,int ) ;
 int mv_cesa_dma_add_result_op (struct mv_cesa_tdma_chain*,int ,scalar_t__,int ,int ) ;
 scalar_t__ mv_cesa_mac_op_is_first_frag (struct mv_cesa_op_ctx*) ;
 int mv_cesa_set_mac_op_total_len (struct mv_cesa_op_ctx*,int ) ;
 int mv_cesa_update_op_cfg (struct mv_cesa_op_ctx*,int ,int ) ;

__attribute__((used)) static struct mv_cesa_op_ctx *
mv_cesa_ahash_dma_last_req(struct mv_cesa_tdma_chain *chain,
      struct mv_cesa_ahash_dma_iter *dma_iter,
      struct mv_cesa_ahash_req *creq,
      unsigned int frag_len, gfp_t flags)
{
 struct mv_cesa_ahash_dma_req *ahashdreq = &creq->req.dma;
 unsigned int len, trailerlen, padoff = 0;
 struct mv_cesa_op_ctx *op;
 int ret;





 if (creq->len <= CESA_SA_DESC_MAC_SRC_TOTAL_LEN_MAX && frag_len) {
  op = mv_cesa_dma_add_frag(chain, &creq->op_tmpl, frag_len,
       flags);
  if (IS_ERR(op))
   return op;

  mv_cesa_set_mac_op_total_len(op, creq->len);
  mv_cesa_update_op_cfg(op, mv_cesa_mac_op_is_first_frag(op) ?
      CESA_SA_DESC_CFG_NOT_FRAG :
      CESA_SA_DESC_CFG_LAST_FRAG,
          CESA_SA_DESC_CFG_FRAG_MSK);

  ret = mv_cesa_dma_add_result_op(chain,
      CESA_SA_CFG_SRAM_OFFSET,
      CESA_SA_DATA_SRAM_OFFSET,
      CESA_TDMA_SRC_IN_SRAM, flags);
  if (ret)
   return ERR_PTR(-ENOMEM);
  return op;
 }






 ret = mv_cesa_ahash_dma_alloc_padding(ahashdreq, flags);
 if (ret)
  return ERR_PTR(ret);

 trailerlen = mv_cesa_ahash_pad_req(creq, ahashdreq->padding);

 len = min(CESA_SA_SRAM_PAYLOAD_SIZE - frag_len, trailerlen);
 if (len) {
  ret = mv_cesa_dma_add_data_transfer(chain,
      CESA_SA_DATA_SRAM_OFFSET +
      frag_len,
      ahashdreq->padding_dma,
      len, CESA_TDMA_DST_IN_SRAM,
      flags);
  if (ret)
   return ERR_PTR(ret);

  op = mv_cesa_dma_add_frag(chain, &creq->op_tmpl, frag_len + len,
       flags);
  if (IS_ERR(op))
   return op;

  if (len == trailerlen)
   return op;

  padoff += len;
 }

 ret = mv_cesa_dma_add_data_transfer(chain,
         CESA_SA_DATA_SRAM_OFFSET,
         ahashdreq->padding_dma +
         padoff,
         trailerlen - padoff,
         CESA_TDMA_DST_IN_SRAM,
         flags);
 if (ret)
  return ERR_PTR(ret);

 return mv_cesa_dma_add_frag(chain, &creq->op_tmpl, trailerlen - padoff,
        flags);
}
