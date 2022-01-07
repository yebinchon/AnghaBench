
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypt_config {int dummy; } ;


 int crypt_integrity_aead (struct crypt_config*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct scatterlist *crypt_get_sg_data(struct crypt_config *cc,
          struct scatterlist *sg)
{
 if (unlikely(crypt_integrity_aead(cc)))
  return &sg[2];

 return sg;
}
