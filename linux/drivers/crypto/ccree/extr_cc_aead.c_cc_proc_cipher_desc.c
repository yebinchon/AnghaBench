
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int drvdata; } ;
struct aead_request {int dummy; } ;
struct TYPE_4__ {int mlli_nents; int sram_addr; } ;
struct TYPE_3__ {scalar_t__ mlli_nents; scalar_t__ sram_addr; } ;
struct aead_req_ctx {int data_buff_type; scalar_t__ cryptlen; TYPE_2__ dst; TYPE_1__ src; scalar_t__ dst_offset; int dst_sgl; scalar_t__ src_offset; int src_sgl; } ;
typedef enum cc_req_dma_buf_type { ____Placeholder_cc_req_dma_buf_type } cc_req_dma_buf_type ;





 int DMA_DLLI ;
 int DMA_MLLI ;
 int NS_BIT ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_din_type (struct cc_hw_desc*,int ,scalar_t__,scalar_t__,int ) ;
 int set_dout_dlli (struct cc_hw_desc*,scalar_t__,scalar_t__,int ,int ) ;
 int set_dout_mlli (struct cc_hw_desc*,int ,int ,int ,int ) ;
 int set_flow_mode (struct cc_hw_desc*,unsigned int) ;
 scalar_t__ sg_dma_address (int ) ;

__attribute__((used)) static void cc_proc_cipher_desc(struct aead_request *areq,
    unsigned int flow_mode,
    struct cc_hw_desc desc[],
    unsigned int *seq_size)
{
 unsigned int idx = *seq_size;
 struct aead_req_ctx *areq_ctx = aead_request_ctx(areq);
 enum cc_req_dma_buf_type data_dma_type = areq_ctx->data_buff_type;
 struct crypto_aead *tfm = crypto_aead_reqtfm(areq);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);

 if (areq_ctx->cryptlen == 0)
  return;

 switch (data_dma_type) {
 case 130:
  dev_dbg(dev, "CIPHER: SRC/DST buffer type DLLI\n");
  hw_desc_init(&desc[idx]);
  set_din_type(&desc[idx], DMA_DLLI,
        (sg_dma_address(areq_ctx->src_sgl) +
         areq_ctx->src_offset), areq_ctx->cryptlen,
         NS_BIT);
  set_dout_dlli(&desc[idx],
         (sg_dma_address(areq_ctx->dst_sgl) +
          areq_ctx->dst_offset),
         areq_ctx->cryptlen, NS_BIT, 0);
  set_flow_mode(&desc[idx], flow_mode);
  break;
 case 129:
  dev_dbg(dev, "CIPHER: SRC/DST buffer type MLLI\n");
  hw_desc_init(&desc[idx]);
  set_din_type(&desc[idx], DMA_MLLI, areq_ctx->src.sram_addr,
        areq_ctx->src.mlli_nents, NS_BIT);
  set_dout_mlli(&desc[idx], areq_ctx->dst.sram_addr,
         areq_ctx->dst.mlli_nents, NS_BIT, 0);
  set_flow_mode(&desc[idx], flow_mode);
  break;
 case 128:
 default:
  dev_err(dev, "CIPHER: Invalid SRC/DST buffer type\n");
 }

 *seq_size = (++idx);
}
