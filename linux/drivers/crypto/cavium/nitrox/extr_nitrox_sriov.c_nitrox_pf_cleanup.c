
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int state; } ;


 int __NDEV_NOT_READY ;
 int atomic_set (int *,int ) ;
 int nitrox_common_sw_cleanup (struct nitrox_device*) ;
 int nitrox_crypto_unregister () ;
 int nitrox_unregister_interrupts (struct nitrox_device*) ;

__attribute__((used)) static void nitrox_pf_cleanup(struct nitrox_device *ndev)
{

 atomic_set(&ndev->state, __NDEV_NOT_READY);

 nitrox_crypto_unregister();


 nitrox_unregister_interrupts(ndev);
 nitrox_common_sw_cleanup(ndev);
}
