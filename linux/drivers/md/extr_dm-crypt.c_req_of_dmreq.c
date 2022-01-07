
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_crypt_request {int dummy; } ;
struct crypt_config {int dmreq_start; } ;



__attribute__((used)) static void *req_of_dmreq(struct crypt_config *cc, struct dm_crypt_request *dmreq)
{
 return (void *)((char *)dmreq - cc->dmreq_start);
}
