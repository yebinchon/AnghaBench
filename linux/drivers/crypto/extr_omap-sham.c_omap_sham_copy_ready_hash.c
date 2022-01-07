
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_sham_reqctx {int flags; TYPE_1__* dd; scalar_t__ digest; } ;
struct ahash_request {scalar_t__ result; } ;
struct TYPE_2__ {int flags; } ;


 int FLAGS_BE32_SHA1 ;
 int FLAGS_MODE_MASK ;






 int MD5_DIGEST_SIZE ;
 int SHA1_DIGEST_SIZE ;
 int SHA224_DIGEST_SIZE ;
 int SHA256_DIGEST_SIZE ;
 int SHA384_DIGEST_SIZE ;
 int SHA512_DIGEST_SIZE ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int be32_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void omap_sham_copy_ready_hash(struct ahash_request *req)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 u32 *in = (u32 *)ctx->digest;
 u32 *hash = (u32 *)req->result;
 int i, d, big_endian = 0;

 if (!hash)
  return;

 switch (ctx->flags & FLAGS_MODE_MASK) {
 case 133:
  d = MD5_DIGEST_SIZE / sizeof(u32);
  break;
 case 132:

  if (test_bit(FLAGS_BE32_SHA1, &ctx->dd->flags))
   big_endian = 1;
  d = SHA1_DIGEST_SIZE / sizeof(u32);
  break;
 case 131:
  d = SHA224_DIGEST_SIZE / sizeof(u32);
  break;
 case 130:
  d = SHA256_DIGEST_SIZE / sizeof(u32);
  break;
 case 129:
  d = SHA384_DIGEST_SIZE / sizeof(u32);
  break;
 case 128:
  d = SHA512_DIGEST_SIZE / sizeof(u32);
  break;
 default:
  d = 0;
 }

 if (big_endian)
  for (i = 0; i < d; i++)
   hash[i] = be32_to_cpu(in[i]);
 else
  for (i = 0; i < d; i++)
   hash[i] = le32_to_cpu(in[i]);
}
