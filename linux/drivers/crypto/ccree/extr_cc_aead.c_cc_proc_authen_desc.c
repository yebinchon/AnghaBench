
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int drvdata; } ;
struct aead_request {int dummy; } ;
struct TYPE_6__ {int mlli_nents; int sram_addr; } ;
struct TYPE_5__ {int mlli_nents; int sram_addr; } ;
struct TYPE_4__ {int mlli_nents; int sram_addr; } ;
struct aead_req_ctx {int data_buff_type; unsigned int dst_offset; unsigned int src_offset; TYPE_3__ src; TYPE_2__ dst; int is_single_pass; TYPE_1__ assoc; int cryptlen; struct scatterlist* src_sgl; struct scatterlist* dst_sgl; } ;
typedef enum cc_req_dma_buf_type { ____Placeholder_cc_req_dma_buf_type } cc_req_dma_buf_type ;
typedef int cc_sram_addr_t ;





 int DMA_DLLI ;
 int DMA_MLLI ;
 int DRV_CRYPTO_DIRECTION_ENCRYPT ;
 int NS_BIT ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,unsigned int) ;
 int sg_dma_address (struct scatterlist*) ;

__attribute__((used)) static void cc_proc_authen_desc(struct aead_request *areq,
    unsigned int flow_mode,
    struct cc_hw_desc desc[],
    unsigned int *seq_size, int direct)
{
 struct aead_req_ctx *areq_ctx = aead_request_ctx(areq);
 enum cc_req_dma_buf_type data_dma_type = areq_ctx->data_buff_type;
 unsigned int idx = *seq_size;
 struct crypto_aead *tfm = crypto_aead_reqtfm(areq);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);

 switch (data_dma_type) {
 case 130:
 {
  struct scatterlist *cipher =
   (direct == DRV_CRYPTO_DIRECTION_ENCRYPT) ?
   areq_ctx->dst_sgl : areq_ctx->src_sgl;

  unsigned int offset =
   (direct == DRV_CRYPTO_DIRECTION_ENCRYPT) ?
   areq_ctx->dst_offset : areq_ctx->src_offset;
  dev_dbg(dev, "AUTHENC: SRC/DST buffer type DLLI\n");
  hw_desc_init(&desc[idx]);
  set_din_type(&desc[idx], DMA_DLLI,
        (sg_dma_address(cipher) + offset),
        areq_ctx->cryptlen, NS_BIT);
  set_flow_mode(&desc[idx], flow_mode);
  break;
 }
 case 129:
 {




  cc_sram_addr_t mlli_addr = areq_ctx->assoc.sram_addr;
  u32 mlli_nents = areq_ctx->assoc.mlli_nents;

  if (areq_ctx->is_single_pass) {
   if (direct == DRV_CRYPTO_DIRECTION_ENCRYPT) {
    mlli_addr = areq_ctx->dst.sram_addr;
    mlli_nents = areq_ctx->dst.mlli_nents;
   } else {
    mlli_addr = areq_ctx->src.sram_addr;
    mlli_nents = areq_ctx->src.mlli_nents;
   }
  }

  dev_dbg(dev, "AUTHENC: SRC/DST buffer type MLLI\n");
  hw_desc_init(&desc[idx]);
  set_din_type(&desc[idx], DMA_MLLI, mlli_addr, mlli_nents,
        NS_BIT);
  set_flow_mode(&desc[idx], flow_mode);
  break;
 }
 case 128:
 default:
  dev_err(dev, "AUTHENC: Invalid SRC/DST buffer type\n");
 }

 *seq_size = (++idx);
}
