
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srpt_port {int port; int * mad_agent; } ;
struct srpt_device {TYPE_1__* device; struct srpt_port* port; } ;
struct ib_port_modify {int clr_port_cap_mask; } ;
struct TYPE_2__ {int phys_port_cnt; } ;


 int IB_PORT_DEVICE_MGMT_SUP ;
 int WARN_ON (int) ;
 scalar_t__ ib_modify_port (TYPE_1__*,int,int ,struct ib_port_modify*) ;
 int ib_unregister_mad_agent (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static void srpt_unregister_mad_agent(struct srpt_device *sdev)
{
 struct ib_port_modify port_modify = {
  .clr_port_cap_mask = IB_PORT_DEVICE_MGMT_SUP,
 };
 struct srpt_port *sport;
 int i;

 for (i = 1; i <= sdev->device->phys_port_cnt; i++) {
  sport = &sdev->port[i - 1];
  WARN_ON(sport->port != i);
  if (ib_modify_port(sdev->device, i, 0, &port_modify) < 0)
   pr_err("disabling MAD processing failed.\n");
  if (sport->mad_agent) {
   ib_unregister_mad_agent(sport->mad_agent);
   sport->mad_agent = ((void*)0);
  }
 }
}
