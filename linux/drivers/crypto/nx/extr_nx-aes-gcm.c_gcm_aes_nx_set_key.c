
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int key; } ;
struct TYPE_6__ {int mode; } ;
struct TYPE_5__ {int key; } ;
struct TYPE_8__ {TYPE_3__ aes_gca; TYPE_2__ hdr; TYPE_1__ aes_gcm; } ;
struct nx_csbcpb {TYPE_4__ cpb; } ;
struct nx_crypto_ctx {int * props; int * ap; struct nx_csbcpb* csbcpb_aead; struct nx_csbcpb* csbcpb; } ;
struct crypto_aead {int dummy; } ;





 int EINVAL ;
 int HCOP_FC_AES ;
 int NX_CPB_SET_KEY_SIZE (struct nx_csbcpb*,int ) ;
 int NX_KS_AES_128 ;
 int NX_KS_AES_192 ;
 int NX_KS_AES_256 ;
 int NX_MODE_AES_GCA ;
 int NX_MODE_AES_GCM ;
 size_t NX_PROPS_AES_128 ;
 size_t NX_PROPS_AES_192 ;
 size_t NX_PROPS_AES_256 ;
 struct nx_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int nx_ctx_init (struct nx_crypto_ctx*,int ) ;

__attribute__((used)) static int gcm_aes_nx_set_key(struct crypto_aead *tfm,
         const u8 *in_key,
         unsigned int key_len)
{
 struct nx_crypto_ctx *nx_ctx = crypto_aead_ctx(tfm);
 struct nx_csbcpb *csbcpb = nx_ctx->csbcpb;
 struct nx_csbcpb *csbcpb_aead = nx_ctx->csbcpb_aead;

 nx_ctx_init(nx_ctx, HCOP_FC_AES);

 switch (key_len) {
 case 130:
  NX_CPB_SET_KEY_SIZE(csbcpb, NX_KS_AES_128);
  NX_CPB_SET_KEY_SIZE(csbcpb_aead, NX_KS_AES_128);
  nx_ctx->ap = &nx_ctx->props[NX_PROPS_AES_128];
  break;
 case 129:
  NX_CPB_SET_KEY_SIZE(csbcpb, NX_KS_AES_192);
  NX_CPB_SET_KEY_SIZE(csbcpb_aead, NX_KS_AES_192);
  nx_ctx->ap = &nx_ctx->props[NX_PROPS_AES_192];
  break;
 case 128:
  NX_CPB_SET_KEY_SIZE(csbcpb, NX_KS_AES_256);
  NX_CPB_SET_KEY_SIZE(csbcpb_aead, NX_KS_AES_256);
  nx_ctx->ap = &nx_ctx->props[NX_PROPS_AES_256];
  break;
 default:
  return -EINVAL;
 }

 csbcpb->cpb.hdr.mode = NX_MODE_AES_GCM;
 memcpy(csbcpb->cpb.aes_gcm.key, in_key, key_len);

 csbcpb_aead->cpb.hdr.mode = NX_MODE_AES_GCA;
 memcpy(csbcpb_aead->cpb.aes_gca.key, in_key, key_len);

 return 0;
}
