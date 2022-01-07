
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nokia_modem_device {scalar_t__ ssi_protocol; int device; } ;


 int dev_info (int ,char*) ;
 int ssip_reset_event (scalar_t__) ;

__attribute__((used)) static void do_nokia_modem_rst_ind_tasklet(unsigned long data)
{
 struct nokia_modem_device *modem = (struct nokia_modem_device *)data;

 if (!modem)
  return;

 dev_info(modem->device, "CMT rst line change detected\n");

 if (modem->ssi_protocol)
  ssip_reset_event(modem->ssi_protocol);
}
