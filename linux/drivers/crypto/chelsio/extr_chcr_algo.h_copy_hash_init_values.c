
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
typedef int __be64 ;
typedef int __be32 ;



 size_t SHA1_INIT_STATE ;

 size_t SHA224_INIT_STATE ;

 size_t SHA256_INIT_STATE ;

 size_t SHA384_INIT_STATE ;

 size_t SHA512_INIT_STATE ;
 int be64_to_cpu (int ) ;
 int * chcr_sha1_init ;
 int * chcr_sha224_init ;
 int * chcr_sha256_init ;
 scalar_t__ chcr_sha384_init ;
 scalar_t__ chcr_sha512_init ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void copy_hash_init_values(char *key, int digestsize)
{
 u8 i;
 __be32 *dkey = (__be32 *)key;
 u64 *ldkey = (u64 *)key;
 __be64 *sha384 = (__be64 *)chcr_sha384_init;
 __be64 *sha512 = (__be64 *)chcr_sha512_init;

 switch (digestsize) {
 case 132:
  for (i = 0; i < SHA1_INIT_STATE; i++)
   dkey[i] = cpu_to_be32(chcr_sha1_init[i]);
  break;
 case 131:
  for (i = 0; i < SHA224_INIT_STATE; i++)
   dkey[i] = cpu_to_be32(chcr_sha224_init[i]);
  break;
 case 130:
  for (i = 0; i < SHA256_INIT_STATE; i++)
   dkey[i] = cpu_to_be32(chcr_sha256_init[i]);
  break;
 case 129:
  for (i = 0; i < SHA384_INIT_STATE; i++)
   ldkey[i] = be64_to_cpu(sha384[i]);
  break;
 case 128:
  for (i = 0; i < SHA512_INIT_STATE; i++)
   ldkey[i] = be64_to_cpu(sha512[i]);
  break;
 }
}
