
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_hash_reqctx {unsigned int nregs; scalar_t__ digest; struct s5p_aes_dev* dd; } ;
struct s5p_aes_dev {int dummy; } ;
struct ahash_request {int dummy; } ;


 int SSS_REG_HASH_OUT (unsigned int) ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int s5p_hash_read (struct s5p_aes_dev*,int ) ;

__attribute__((used)) static void s5p_hash_read_msg(struct ahash_request *req)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);
 struct s5p_aes_dev *dd = ctx->dd;
 u32 *hash = (u32 *)ctx->digest;
 unsigned int i;

 for (i = 0; i < ctx->nregs; i++)
  hash[i] = s5p_hash_read(dd, SSS_REG_HASH_OUT(i));
}
