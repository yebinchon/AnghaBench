
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int enable_aqm_interrupts (struct nitrox_device*) ;
 int nitrox_config_aqm_rings (struct nitrox_device*) ;

void nitrox_config_aqm_unit(struct nitrox_device *ndev)
{

 nitrox_config_aqm_rings(ndev);


 enable_aqm_interrupts(ndev);
}
