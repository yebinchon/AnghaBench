
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int op_type; int iv_dma_addr; } ;
struct cipher_req_ctx {TYPE_1__ gen_ctx; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_cipher_ctx {int cipher_mode; scalar_t__ key_type; int drvdata; } ;
typedef int dma_addr_t ;


 unsigned int CC_AES_BLOCK_SIZE ;
 scalar_t__ CC_POLICY_PROTECTED_KEY ;
 int NS_BIT ;
 int SETUP_WRITE_STATE0 ;
 int SETUP_WRITE_STATE1 ;
 int cc_out_setup_mode (struct cc_cipher_ctx*) ;
 struct cc_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int dev_err (struct device*,char*,int) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config0 (struct cc_hw_desc*,int) ;
 int set_cipher_mode (struct cc_hw_desc*,int) ;
 int set_dout_dlli (struct cc_hw_desc*,int ,unsigned int,int ,int) ;
 int set_flow_mode (struct cc_hw_desc*,int) ;
 int set_queue_last_ind (int ,struct cc_hw_desc*) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static void cc_setup_readiv_desc(struct crypto_tfm *tfm,
     struct cipher_req_ctx *req_ctx,
     unsigned int ivsize, struct cc_hw_desc desc[],
     unsigned int *seq_size)
{
 struct cc_cipher_ctx *ctx_p = crypto_tfm_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx_p->drvdata);
 int cipher_mode = ctx_p->cipher_mode;
 int flow_mode = cc_out_setup_mode(ctx_p);
 int direction = req_ctx->gen_ctx.op_type;
 dma_addr_t iv_dma_addr = req_ctx->gen_ctx.iv_dma_addr;

 if (ctx_p->key_type == CC_POLICY_PROTECTED_KEY)
  return;

 switch (cipher_mode) {
 case 131:
  break;
 case 134:
 case 133:
 case 132:
 case 129:

  hw_desc_init(&desc[*seq_size]);
  set_dout_dlli(&desc[*seq_size], iv_dma_addr, ivsize, NS_BIT, 1);
  set_cipher_config0(&desc[*seq_size], direction);
  set_flow_mode(&desc[*seq_size], flow_mode);
  set_cipher_mode(&desc[*seq_size], cipher_mode);
  if (cipher_mode == 132 ||
      cipher_mode == 129) {
   set_setup_mode(&desc[*seq_size], SETUP_WRITE_STATE1);
  } else {
   set_setup_mode(&desc[*seq_size], SETUP_WRITE_STATE0);
  }
  set_queue_last_ind(ctx_p->drvdata, &desc[*seq_size]);
  (*seq_size)++;
  break;
 case 128:
 case 130:
 case 135:

  hw_desc_init(&desc[*seq_size]);
  set_setup_mode(&desc[*seq_size], SETUP_WRITE_STATE1);
  set_cipher_mode(&desc[*seq_size], cipher_mode);
  set_cipher_config0(&desc[*seq_size], direction);
  set_flow_mode(&desc[*seq_size], flow_mode);
  set_dout_dlli(&desc[*seq_size], iv_dma_addr, CC_AES_BLOCK_SIZE,
        NS_BIT, 1);
  set_queue_last_ind(ctx_p->drvdata, &desc[*seq_size]);
  (*seq_size)++;
  break;
 default:
  dev_err(dev, "Unsupported cipher mode (%d)\n", cipher_mode);
 }
}
