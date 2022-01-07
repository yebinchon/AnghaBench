
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int finup; } ;
struct ahash_request {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int s5p_hash_final (struct ahash_request*) ;
 int s5p_hash_update (struct ahash_request*) ;

__attribute__((used)) static int s5p_hash_finup(struct ahash_request *req)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);
 int err1, err2;

 ctx->finup = 1;

 err1 = s5p_hash_update(req);
 if (err1 == -EINPROGRESS || err1 == -EBUSY)
  return err1;






 err2 = s5p_hash_final(req);

 return err1 ?: err2;
}
