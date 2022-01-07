
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct spu_hw {int (* spu_rx_status_len ) () ;} ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {int rx_stat; int rx_stat_pad; int digest; int spu_resp_hdr; } ;
struct iproc_reqctx_s {TYPE_2__ msg_buf; int gfp; struct iproc_ctx_s* ctx; } ;
struct iproc_ctx_s {int spu_resp_hdr_len; } ;
struct TYPE_4__ {struct scatterlist* dst; } ;
struct brcm_message {TYPE_1__ spu; } ;
struct TYPE_6__ {struct spu_hw spu; } ;


 int ENOMEM ;
 int SPU_RX_STATUS_LEN ;
 TYPE_3__ iproc_priv ;
 struct scatterlist* kcalloc (int ,int,int ) ;
 int memset (int ,int ,int ) ;
 int sg_init_table (struct scatterlist*,int ) ;
 int sg_set_buf (struct scatterlist*,int ,int) ;
 int stub1 () ;

__attribute__((used)) static int
spu_ahash_rx_sg_create(struct brcm_message *mssg,
         struct iproc_reqctx_s *rctx,
         u8 rx_frag_num, unsigned int digestsize,
         u32 stat_pad_len)
{
 struct spu_hw *spu = &iproc_priv.spu;
 struct scatterlist *sg;
 struct iproc_ctx_s *ctx = rctx->ctx;

 mssg->spu.dst = kcalloc(rx_frag_num, sizeof(struct scatterlist),
    rctx->gfp);
 if (!mssg->spu.dst)
  return -ENOMEM;

 sg = mssg->spu.dst;
 sg_init_table(sg, rx_frag_num);

 sg_set_buf(sg++, rctx->msg_buf.spu_resp_hdr, ctx->spu_resp_hdr_len);


 sg_set_buf(sg++, rctx->msg_buf.digest, digestsize);

 if (stat_pad_len)
  sg_set_buf(sg++, rctx->msg_buf.rx_stat_pad, stat_pad_len);

 memset(rctx->msg_buf.rx_stat, 0, SPU_RX_STATUS_LEN);
 sg_set_buf(sg, rctx->msg_buf.rx_stat, spu->spu_rx_status_len());
 return 0;
}
