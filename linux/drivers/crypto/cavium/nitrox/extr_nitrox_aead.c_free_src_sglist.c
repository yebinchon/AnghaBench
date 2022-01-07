
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_kcrypt_request {int src; } ;


 int kfree (int ) ;

__attribute__((used)) static void free_src_sglist(struct nitrox_kcrypt_request *nkreq)
{
 kfree(nkreq->src);
}
