
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_hash_request_ctx {int flags; int hdev; scalar_t__ digest; } ;
struct ahash_request {int dummy; } ;


 int HASH_FLAGS_ALGO_MASK ;




 int HASH_HREG (unsigned int) ;
 unsigned int MD5_DIGEST_SIZE ;
 unsigned int SHA1_DIGEST_SIZE ;
 unsigned int SHA224_DIGEST_SIZE ;
 unsigned int SHA256_DIGEST_SIZE ;
 struct stm32_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int be32_to_cpu (int ) ;
 int stm32_hash_read (int ,int ) ;

__attribute__((used)) static void stm32_hash_copy_hash(struct ahash_request *req)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(req);
 u32 *hash = (u32 *)rctx->digest;
 unsigned int i, hashsize;

 switch (rctx->flags & HASH_FLAGS_ALGO_MASK) {
 case 131:
  hashsize = MD5_DIGEST_SIZE;
  break;
 case 130:
  hashsize = SHA1_DIGEST_SIZE;
  break;
 case 129:
  hashsize = SHA224_DIGEST_SIZE;
  break;
 case 128:
  hashsize = SHA256_DIGEST_SIZE;
  break;
 default:
  return;
 }

 for (i = 0; i < hashsize / sizeof(u32); i++)
  hash[i] = be32_to_cpu(stm32_hash_read(rctx->hdev,
            HASH_HREG(i)));
}
