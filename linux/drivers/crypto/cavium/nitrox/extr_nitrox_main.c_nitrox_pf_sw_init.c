
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int nitrox_common_sw_cleanup (struct nitrox_device*) ;
 int nitrox_common_sw_init (struct nitrox_device*) ;
 int nitrox_register_interrupts (struct nitrox_device*) ;

__attribute__((used)) static int nitrox_pf_sw_init(struct nitrox_device *ndev)
{
 int err;

 err = nitrox_common_sw_init(ndev);
 if (err)
  return err;

 err = nitrox_register_interrupts(ndev);
 if (err)
  nitrox_common_sw_cleanup(ndev);

 return err;
}
