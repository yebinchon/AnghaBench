
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct artpec6_crypto_walk {scalar_t__ offset; struct scatterlist* sg; } ;



__attribute__((used)) static void artpec6_crypto_walk_init(struct artpec6_crypto_walk *awalk,
         struct scatterlist *sg)
{
 awalk->sg = sg;
 awalk->offset = 0;
}
