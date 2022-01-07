
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int nitrox_mbox_cleanup (struct nitrox_device*) ;
 int nitrox_sriov_unregister_interrupts (struct nitrox_device*) ;

__attribute__((used)) static void nitrox_sriov_cleanup(struct nitrox_device *ndev)
{

 nitrox_sriov_unregister_interrupts(ndev);
 nitrox_mbox_cleanup(ndev);
}
