
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto_walk {scalar_t__ offset; int sg; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ sg_phys (int ) ;

__attribute__((used)) static dma_addr_t
artpec6_crypto_walk_chunk_phys(const struct artpec6_crypto_walk *awalk)
{
 return sg_phys(awalk->sg) + awalk->offset;
}
