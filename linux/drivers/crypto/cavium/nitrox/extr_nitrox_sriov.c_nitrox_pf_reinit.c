
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int state; } ;


 int __NDEV_READY ;
 int atomic_set (int *,int ) ;
 int nitrox_common_sw_cleanup (struct nitrox_device*) ;
 int nitrox_common_sw_init (struct nitrox_device*) ;
 int nitrox_config_aqm_rings (struct nitrox_device*) ;
 int nitrox_config_pkt_input_rings (struct nitrox_device*) ;
 int nitrox_config_pkt_solicit_ports (struct nitrox_device*) ;
 int nitrox_crypto_register () ;
 int nitrox_register_interrupts (struct nitrox_device*) ;

__attribute__((used)) static int nitrox_pf_reinit(struct nitrox_device *ndev)
{
 int err;


 err = nitrox_common_sw_init(ndev);
 if (err)
  return err;

 err = nitrox_register_interrupts(ndev);
 if (err) {
  nitrox_common_sw_cleanup(ndev);
  return err;
 }


 nitrox_config_aqm_rings(ndev);


 nitrox_config_pkt_input_rings(ndev);
 nitrox_config_pkt_solicit_ports(ndev);


 atomic_set(&ndev->state, __NDEV_READY);


 return nitrox_crypto_register();
}
