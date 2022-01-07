
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int key; } ;
struct TYPE_4__ {TYPE_1__ aes_xcbc; } ;
struct nx_csbcpb {TYPE_2__ cpb; } ;
struct nx_crypto_ctx {int * props; int * ap; struct nx_csbcpb* csbcpb; } ;
struct crypto_shash {int dummy; } ;



 int EINVAL ;
 size_t NX_PROPS_AES_128 ;
 struct nx_crypto_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int nx_xcbc_set_key(struct crypto_shash *desc,
      const u8 *in_key,
      unsigned int key_len)
{
 struct nx_crypto_ctx *nx_ctx = crypto_shash_ctx(desc);
 struct nx_csbcpb *csbcpb = nx_ctx->csbcpb;

 switch (key_len) {
 case 128:
  nx_ctx->ap = &nx_ctx->props[NX_PROPS_AES_128];
  break;
 default:
  return -EINVAL;
 }

 memcpy(csbcpb->cpb.aes_xcbc.key, in_key, key_len);

 return 0;
}
