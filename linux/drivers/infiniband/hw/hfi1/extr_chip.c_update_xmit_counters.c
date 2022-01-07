
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfi1_pportdata {int link_speed_active; } ;


 int C_VL_COUNT ;
 int get_link_speed (int ) ;
 int get_xmit_wait_counters (struct hfi1_pportdata*,int ,int ,int) ;
 int tx_link_width (int ) ;

__attribute__((used)) static void update_xmit_counters(struct hfi1_pportdata *ppd, u16 link_width)
{
 int i;
 u16 tx_width;
 u16 link_speed;

 tx_width = tx_link_width(link_width);
 link_speed = get_link_speed(ppd->link_speed_active);





 for (i = 0; i < C_VL_COUNT + 1; i++)
  get_xmit_wait_counters(ppd, tx_width, link_speed, i);
}
