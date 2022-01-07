
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hash_type { ____Placeholder_hash_type } hash_type ;
typedef enum hash_alg { ____Placeholder_hash_alg } hash_alg ;


 int HASH_ALG_SHA224 ;
 int HASH_ALG_SHA384 ;
 int HASH_TYPE_INIT ;
 int HASH_TYPE_UPDT ;
 int SHA256_DIGEST_SIZE ;
 int SHA512_DIGEST_SIZE ;

u32 spum_digest_size(u32 alg_digest_size, enum hash_alg alg,
       enum hash_type htype)
{
 u32 digestsize = alg_digest_size;




 if ((htype == HASH_TYPE_INIT) || (htype == HASH_TYPE_UPDT)) {
  if (alg == HASH_ALG_SHA224)
   digestsize = SHA256_DIGEST_SIZE;
  else if (alg == HASH_ALG_SHA384)
   digestsize = SHA512_DIGEST_SIZE;
 }
 return digestsize;
}
