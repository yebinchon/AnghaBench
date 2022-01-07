
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct dm_crypt_request {int iv_sector; } ;
struct crypt_config {int iv_size; } ;
typedef int __be64 ;


 int cpu_to_be64 (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int crypt_iv_plain64be_gen(struct crypt_config *cc, u8 *iv,
      struct dm_crypt_request *dmreq)
{
 memset(iv, 0, cc->iv_size);

 *(__be64 *)&iv[cc->iv_size - sizeof(u64)] = cpu_to_be64(dmreq->iv_sector);

 return 0;
}
