
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct hfi1_pportdata {scalar_t__* vl_xmit_flit_cnt; int prev_link_width; scalar_t__* port_vl_xmit_wait_last; } ;


 int CNTR_INVALID_VL ;
 int C_TX_WAIT ;
 int C_TX_WAIT_VL ;
 int C_VL_COUNT ;
 scalar_t__ convert_xmit_counter (scalar_t__,int ,int ) ;
 scalar_t__ read_port_cntr (struct hfi1_pportdata*,int ,int) ;

u64 get_xmit_wait_counters(struct hfi1_pportdata *ppd,
      u16 link_width, u16 link_speed, int vl)
{
 u64 port_vl_xmit_wait_curr;
 u64 delta_vl_xmit_wait;
 u64 xmit_wait_val;

 if (vl > C_VL_COUNT)
  return 0;
 if (vl < C_VL_COUNT)
  port_vl_xmit_wait_curr =
   read_port_cntr(ppd, C_TX_WAIT_VL, vl);
 else
  port_vl_xmit_wait_curr =
   read_port_cntr(ppd, C_TX_WAIT, CNTR_INVALID_VL);

 xmit_wait_val =
  port_vl_xmit_wait_curr -
  ppd->port_vl_xmit_wait_last[vl];
 delta_vl_xmit_wait =
  convert_xmit_counter(xmit_wait_val,
         ppd->prev_link_width,
         link_speed);

 ppd->vl_xmit_flit_cnt[vl] += delta_vl_xmit_wait;
 ppd->port_vl_xmit_wait_last[vl] = port_vl_xmit_wait_curr;
 ppd->prev_link_width = link_width;

 return ppd->vl_xmit_flit_cnt[vl];
}
