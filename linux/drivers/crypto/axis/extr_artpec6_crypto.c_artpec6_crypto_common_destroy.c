
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto_req_common {int * dma; } ;
struct artpec6_crypto {int dma_cache; } ;


 int artpec6_crypto_bounce_destroy (int *) ;
 int artpec6_crypto_dev ;
 int artpec6_crypto_dma_unmap_all (struct artpec6_crypto_req_common*) ;
 struct artpec6_crypto* dev_get_drvdata (int ) ;
 int kmem_cache_free (int ,int *) ;

__attribute__((used)) static int
artpec6_crypto_common_destroy(struct artpec6_crypto_req_common *common)
{
 struct artpec6_crypto *ac = dev_get_drvdata(artpec6_crypto_dev);

 artpec6_crypto_dma_unmap_all(common);
 artpec6_crypto_bounce_destroy(common->dma);
 kmem_cache_free(ac->dma_cache, common->dma);
 common->dma = ((void*)0);
 return 0;
}
