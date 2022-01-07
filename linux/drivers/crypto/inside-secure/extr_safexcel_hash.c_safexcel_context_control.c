
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct safexcel_crypto_priv {int dev; } ;
struct TYPE_6__ {int control0; int control1; } ;
struct safexcel_command_desc {TYPE_3__ control_data; } ;
struct safexcel_ahash_req {int processed; int state_sz; int digest; int hmac_zlen; int block_sz; scalar_t__ finish; int state; } ;
struct TYPE_5__ {TYPE_1__* ctxr; } ;
struct safexcel_ahash_ctx {int alg; int opad; TYPE_2__ base; struct safexcel_crypto_priv* priv; } ;
struct TYPE_4__ {int * data; } ;


 int CONTEXT_CONTROL_DIGEST_CNT ;
 int CONTEXT_CONTROL_DIGEST_HMAC ;
 int CONTEXT_CONTROL_DIGEST_PRECOMPUTED ;
 int CONTEXT_CONTROL_NO_FINISH_HASH ;
 int CONTEXT_CONTROL_RESTART_HASH ;
 int CONTEXT_CONTROL_SIZE (int) ;
 int CONTEXT_CONTROL_TYPE_HASH_OUT ;
 int EIP197_COUNTER_BLOCK_SIZE ;
 int cpu_to_le32 (int) ;
 int dev_warn (int ,char*) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void safexcel_context_control(struct safexcel_ahash_ctx *ctx,
         struct safexcel_ahash_req *req,
         struct safexcel_command_desc *cdesc)
{
 struct safexcel_crypto_priv *priv = ctx->priv;
 u64 count = 0;

 cdesc->control_data.control0 |= ctx->alg;






 if (!req->processed) {

  if (req->finish) {
   cdesc->control_data.control0 |=
    CONTEXT_CONTROL_TYPE_HASH_OUT |
    CONTEXT_CONTROL_RESTART_HASH |

    CONTEXT_CONTROL_SIZE(1);
  } else {
   cdesc->control_data.control0 |=
    CONTEXT_CONTROL_TYPE_HASH_OUT |
    CONTEXT_CONTROL_RESTART_HASH |
    CONTEXT_CONTROL_NO_FINISH_HASH |

    CONTEXT_CONTROL_SIZE(1);
  }
  return;
 }


 memcpy(ctx->base.ctxr->data, req->state, req->state_sz);

 if (req->finish) {

  if ((req->digest == CONTEXT_CONTROL_DIGEST_PRECOMPUTED) ||
      req->hmac_zlen || (req->processed != req->block_sz)) {
   count = req->processed / EIP197_COUNTER_BLOCK_SIZE;






   if (unlikely(count & 0xffffffff00000000ULL)) {
    dev_warn(priv->dev,
      "Input data is too big\n");
    return;
   }
  }

  if ((req->digest == CONTEXT_CONTROL_DIGEST_PRECOMPUTED) ||

      req->hmac_zlen ||

      (req->processed != req->block_sz)) {

   cdesc->control_data.control0 |=
    CONTEXT_CONTROL_SIZE((req->state_sz >> 2) + 1) |
    CONTEXT_CONTROL_TYPE_HASH_OUT |
    CONTEXT_CONTROL_DIGEST_PRECOMPUTED;

   if (req->hmac_zlen)
    cdesc->control_data.control0 |=
     CONTEXT_CONTROL_NO_FINISH_HASH;
   cdesc->control_data.control1 |=
    CONTEXT_CONTROL_DIGEST_CNT;
   ctx->base.ctxr->data[req->state_sz >> 2] =
    cpu_to_le32(count);
   req->digest = CONTEXT_CONTROL_DIGEST_PRECOMPUTED;


   req->hmac_zlen = 0;
  } else {

   memcpy(ctx->base.ctxr->data + (req->state_sz >> 2),
          ctx->opad, req->state_sz);


   cdesc->control_data.control0 |=
    CONTEXT_CONTROL_SIZE(req->state_sz >> 1) |
    CONTEXT_CONTROL_TYPE_HASH_OUT |
    CONTEXT_CONTROL_DIGEST_HMAC;
  }
 } else {
  cdesc->control_data.control0 |=
   CONTEXT_CONTROL_SIZE(req->state_sz >> 2) |
   CONTEXT_CONTROL_DIGEST_PRECOMPUTED |
   CONTEXT_CONTROL_TYPE_HASH_OUT |
   CONTEXT_CONTROL_NO_FINISH_HASH;
 }
}
