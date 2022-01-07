
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int create_crypto_dma_pool (struct nitrox_device*) ;
 int destroy_crypto_dma_pool (struct nitrox_device*) ;
 int nitrox_alloc_aqm_queues (struct nitrox_device*) ;
 int nitrox_alloc_pktin_queues (struct nitrox_device*) ;
 int nitrox_free_pktin_queues (struct nitrox_device*) ;

int nitrox_common_sw_init(struct nitrox_device *ndev)
{
 int err = 0;


 err = create_crypto_dma_pool(ndev);
 if (err)
  return err;

 err = nitrox_alloc_pktin_queues(ndev);
 if (err)
  destroy_crypto_dma_pool(ndev);

 err = nitrox_alloc_aqm_queues(ndev);
 if (err) {
  nitrox_free_pktin_queues(ndev);
  destroy_crypto_dma_pool(ndev);
 }

 return err;
}
