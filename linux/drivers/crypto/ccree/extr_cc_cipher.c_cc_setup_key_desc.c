
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_5__ {int op_type; } ;
struct cipher_req_ctx {TYPE_1__ gen_ctx; } ;
struct cc_hw_desc {int dummy; } ;
struct TYPE_8__ {int key1_slot; } ;
struct TYPE_7__ {int slot; } ;
struct TYPE_6__ {int key_dma_addr; } ;
struct cc_cipher_ctx {int cipher_mode; int flow_mode; unsigned int keylen; TYPE_4__ hw; TYPE_3__ cpp; TYPE_2__ user; int drvdata; } ;
typedef int dma_addr_t ;


 unsigned int AES_MAX_KEY_SIZE ;
 int CC_HW_PROTECTED_KEY ;
 int CC_POLICY_PROTECTED_KEY ;
 int DMA_DLLI ;
 int NS_BIT ;
 int SETUP_LOAD_KEY0 ;
 int S_DIN_to_AES ;
 int cc_key_type (struct crypto_tfm*) ;
 int cc_out_flow_mode (struct cc_cipher_ctx*) ;
 struct cc_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int dev_err (struct device*,char*,int) ;
 struct device* drvdata_to_dev (int ) ;
 int hw_desc_init (struct cc_hw_desc*) ;
 int set_cipher_config0 (struct cc_hw_desc*,int) ;
 int set_cipher_mode (struct cc_hw_desc*,int) ;
 int set_cpp_crypto_key (struct cc_hw_desc*,int ) ;
 int set_din_type (struct cc_hw_desc*,int ,int ,unsigned int,int ) ;
 int set_flow_mode (struct cc_hw_desc*,int) ;
 int set_hw_crypto_key (struct cc_hw_desc*,int ) ;
 int set_key_size_aes (struct cc_hw_desc*,unsigned int) ;
 int set_key_size_des (struct cc_hw_desc*,unsigned int) ;
 int set_setup_mode (struct cc_hw_desc*,int ) ;

__attribute__((used)) static void cc_setup_key_desc(struct crypto_tfm *tfm,
         struct cipher_req_ctx *req_ctx,
         unsigned int nbytes, struct cc_hw_desc desc[],
         unsigned int *seq_size)
{
 struct cc_cipher_ctx *ctx_p = crypto_tfm_ctx(tfm);
 struct device *dev = drvdata_to_dev(ctx_p->drvdata);
 int cipher_mode = ctx_p->cipher_mode;
 int flow_mode = ctx_p->flow_mode;
 int direction = req_ctx->gen_ctx.op_type;
 dma_addr_t key_dma_addr = ctx_p->user.key_dma_addr;
 unsigned int key_len = ctx_p->keylen;
 unsigned int din_size;

 switch (cipher_mode) {
 case 134:
 case 133:
 case 132:
 case 129:
 case 131:

  hw_desc_init(&desc[*seq_size]);
  set_cipher_mode(&desc[*seq_size], cipher_mode);
  set_cipher_config0(&desc[*seq_size], direction);

  if (cc_key_type(tfm) == CC_POLICY_PROTECTED_KEY) {

   set_key_size_aes(&desc[*seq_size], key_len);
   set_cpp_crypto_key(&desc[*seq_size], ctx_p->cpp.slot);
   flow_mode = cc_out_flow_mode(ctx_p);
  } else {
   if (flow_mode == S_DIN_to_AES) {
    if (cc_key_type(tfm) == CC_HW_PROTECTED_KEY) {
     set_hw_crypto_key(&desc[*seq_size],
         ctx_p->hw.key1_slot);
    } else {




     din_size = (key_len == 24) ?
      AES_MAX_KEY_SIZE : key_len;

     set_din_type(&desc[*seq_size], DMA_DLLI,
           key_dma_addr, din_size,
           NS_BIT);
    }
    set_key_size_aes(&desc[*seq_size], key_len);
   } else {

    set_din_type(&desc[*seq_size], DMA_DLLI,
          key_dma_addr, key_len, NS_BIT);
    set_key_size_des(&desc[*seq_size], key_len);
   }
   set_setup_mode(&desc[*seq_size], SETUP_LOAD_KEY0);
  }
  set_flow_mode(&desc[*seq_size], flow_mode);
  (*seq_size)++;
  break;
 case 128:
 case 130:
 case 135:

  hw_desc_init(&desc[*seq_size]);
  set_cipher_mode(&desc[*seq_size], cipher_mode);
  set_cipher_config0(&desc[*seq_size], direction);
  if (cc_key_type(tfm) == CC_HW_PROTECTED_KEY) {
   set_hw_crypto_key(&desc[*seq_size],
       ctx_p->hw.key1_slot);
  } else {
   set_din_type(&desc[*seq_size], DMA_DLLI, key_dma_addr,
         (key_len / 2), NS_BIT);
  }
  set_key_size_aes(&desc[*seq_size], (key_len / 2));
  set_flow_mode(&desc[*seq_size], flow_mode);
  set_setup_mode(&desc[*seq_size], SETUP_LOAD_KEY0);
  (*seq_size)++;
  break;
 default:
  dev_err(dev, "Unsupported cipher mode (%d)\n", cipher_mode);
 }
}
