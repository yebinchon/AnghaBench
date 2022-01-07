
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int destroy_crypto_dma_pool (struct nitrox_device*) ;
 int nitrox_free_aqm_queues (struct nitrox_device*) ;
 int nitrox_free_pktin_queues (struct nitrox_device*) ;

void nitrox_common_sw_cleanup(struct nitrox_device *ndev)
{
 nitrox_free_aqm_queues(ndev);
 nitrox_free_pktin_queues(ndev);
 destroy_crypto_dma_pool(ndev);
}
