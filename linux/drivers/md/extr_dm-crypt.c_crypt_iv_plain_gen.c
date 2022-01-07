
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_crypt_request {int iv_sector; } ;
struct crypt_config {int iv_size; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int crypt_iv_plain_gen(struct crypt_config *cc, u8 *iv,
         struct dm_crypt_request *dmreq)
{
 memset(iv, 0, cc->iv_size);
 *(__le32 *)iv = cpu_to_le32(dmreq->iv_sector & 0xffffffff);

 return 0;
}
