
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int enable_nps_pkt_interrupts (struct nitrox_device*) ;
 int nitrox_config_pkt_input_rings (struct nitrox_device*) ;
 int nitrox_config_pkt_solicit_ports (struct nitrox_device*) ;

void nitrox_config_nps_pkt_unit(struct nitrox_device *ndev)
{

 nitrox_config_pkt_input_rings(ndev);
 nitrox_config_pkt_solicit_ports(ndev);


 enable_nps_pkt_interrupts(ndev);
}
