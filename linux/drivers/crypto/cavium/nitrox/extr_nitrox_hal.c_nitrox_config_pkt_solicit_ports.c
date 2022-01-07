
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int nr_queues; } ;


 int config_pkt_solicit_port (struct nitrox_device*,int) ;

void nitrox_config_pkt_solicit_ports(struct nitrox_device *ndev)
{
 int i;

 for (i = 0; i < ndev->nr_queues; i++)
  config_pkt_solicit_port(ndev, i);
}
