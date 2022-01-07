
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hash_type { ____Placeholder_hash_type } hash_type ;
typedef enum hash_alg { ____Placeholder_hash_alg } hash_alg ;



u32 spu2_digest_size(u32 alg_digest_size, enum hash_alg alg,
       enum hash_type htype)
{
 return alg_digest_size;
}
