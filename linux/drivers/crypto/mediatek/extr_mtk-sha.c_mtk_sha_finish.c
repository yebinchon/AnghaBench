
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * digest; } ;
struct mtk_sha_reqctx {int flags; int ds; TYPE_1__ info; } ;
struct ahash_request {scalar_t__ result; } ;
typedef int __le32 ;


 int SHA_FLAGS_HMAC ;
 int SIZE_IN_WORDS (int ) ;
 struct mtk_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int le32_to_cpu (int ) ;
 int mtk_sha_finish_hmac (struct ahash_request*) ;

__attribute__((used)) static int mtk_sha_finish(struct ahash_request *req)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(req);
 __le32 *digest = ctx->info.digest;
 u32 *result = (u32 *)req->result;
 int i;


 for (i = 0; i < SIZE_IN_WORDS(ctx->ds); i++)
  result[i] = le32_to_cpu(digest[i]);

 if (ctx->flags & SHA_FLAGS_HMAC)
  return mtk_sha_finish_hmac(req);

 return 0;
}
