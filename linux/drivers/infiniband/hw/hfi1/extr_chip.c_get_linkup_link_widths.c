
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfi1_pportdata {int current_egress_rate; int link_width_downgrade_supported; int link_width_downgrade_enabled; int link_width_active; int link_width_downgrade_rx_active; int link_width_downgrade_tx_active; int dd; } ;


 int active_egress_rate (struct hfi1_pportdata*) ;
 int get_linkup_widths (int ,int *,int *) ;

void get_linkup_link_widths(struct hfi1_pportdata *ppd)
{
 u16 tx_width, rx_width;


 get_linkup_widths(ppd->dd, &tx_width, &rx_width);


 ppd->link_width_active = tx_width;

 ppd->link_width_downgrade_tx_active = ppd->link_width_active;
 ppd->link_width_downgrade_rx_active = ppd->link_width_active;

 ppd->link_width_downgrade_enabled = ppd->link_width_downgrade_supported;

 ppd->current_egress_rate = active_egress_rate(ppd);
}
