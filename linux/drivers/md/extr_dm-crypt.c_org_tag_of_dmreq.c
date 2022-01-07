
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u8 ;
struct dm_crypt_request {int dummy; } ;
struct crypt_config {int iv_size; } ;


 int * iv_of_dmreq (struct crypt_config*,struct dm_crypt_request*) ;

__attribute__((used)) static unsigned int *org_tag_of_dmreq(struct crypt_config *cc,
         struct dm_crypt_request *dmreq)
{
 u8 *ptr = iv_of_dmreq(cc, dmreq) + cc->iv_size +
    cc->iv_size + sizeof(uint64_t);
 return (unsigned int*)ptr;
}
