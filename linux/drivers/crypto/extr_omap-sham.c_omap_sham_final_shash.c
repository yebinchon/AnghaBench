
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_sham_reqctx {scalar_t__ bufcnt; scalar_t__ buffer; TYPE_1__* dd; int flags; } ;
struct omap_sham_ctx {int fallback; } ;
struct TYPE_4__ {int flags; int tfm; } ;
struct ahash_request {int result; TYPE_2__ base; } ;
struct TYPE_3__ {int flags; } ;


 int FLAGS_AUTO_XOR ;
 int FLAGS_HMAC ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct omap_sham_ctx* crypto_tfm_ctx (int ) ;
 int get_block_size (struct omap_sham_reqctx*) ;
 int omap_sham_shash_digest (int ,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int omap_sham_final_shash(struct ahash_request *req)
{
 struct omap_sham_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 struct omap_sham_reqctx *ctx = ahash_request_ctx(req);
 int offset = 0;






 if (test_bit(FLAGS_HMAC, &ctx->flags) &&
     !test_bit(FLAGS_AUTO_XOR, &ctx->dd->flags))
  offset = get_block_size(ctx);

 return omap_sham_shash_digest(tctx->fallback, req->base.flags,
          ctx->buffer + offset,
          ctx->bufcnt - offset, req->result);
}
