
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {TYPE_2__* drvdata; } ;
struct aead_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ mlli_len; int mlli_dma_addr; } ;
struct aead_req_ctx {scalar_t__ assoc_buff_type; scalar_t__ data_buff_type; TYPE_1__ mlli_params; int is_single_pass; } ;
struct TYPE_4__ {scalar_t__ mlli_sram_addr; } ;


 int BYPASS ;
 scalar_t__ CC_DMA_BUF_MLLI ;
 int DMA_DLLI ;
 int NS_BIT ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 struct cc_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dev_dbg (struct device*,char*,unsigned int,scalar_t__) ;
 struct device* drvdata_to_dev (TYPE_2__*) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,scalar_t__,int ) ;
 int set_dout_sram (struct cc_hw_desc*,scalar_t__,scalar_t__) ;
 int set_flow_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static void cc_mlli_to_sram(struct aead_request *req,
       struct cc_hw_desc desc[], unsigned int *seq_size)
{
 struct aead_req_ctx *req_ctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct cc_aead_ctx *ctx = crypto_aead_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx->drvdata);

 if ((req_ctx->assoc_buff_type == CC_DMA_BUF_MLLI ||
     req_ctx->data_buff_type == CC_DMA_BUF_MLLI ||
     !req_ctx->is_single_pass) && req_ctx->mlli_params.mlli_len) {
  dev_dbg(dev, "Copy-to-sram: mlli_dma=%08x, mlli_size=%u\n",
   (unsigned int)ctx->drvdata->mlli_sram_addr,
   req_ctx->mlli_params.mlli_len);

  hw_desc_init(&desc[*seq_size]);
  set_din_type(&desc[*seq_size], DMA_DLLI,
        req_ctx->mlli_params.mlli_dma_addr,
        req_ctx->mlli_params.mlli_len, NS_BIT);
  set_dout_sram(&desc[*seq_size],
         ctx->drvdata->mlli_sram_addr,
         req_ctx->mlli_params.mlli_len);
  set_flow_mode(&desc[*seq_size], BYPASS);
  (*seq_size)++;
 }
}
