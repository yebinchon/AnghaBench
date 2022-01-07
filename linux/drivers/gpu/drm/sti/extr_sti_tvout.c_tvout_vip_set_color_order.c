
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_tvout {int dummy; } ;


 int TVO_VIP_REORDER_B_SHIFT ;
 int TVO_VIP_REORDER_G_SHIFT ;
 int TVO_VIP_REORDER_MASK ;
 int TVO_VIP_REORDER_R_SHIFT ;
 int tvout_read (struct sti_tvout*,int) ;
 int tvout_write (struct sti_tvout*,int,int) ;

__attribute__((used)) static void tvout_vip_set_color_order(struct sti_tvout *tvout, int reg,
          u32 cr_r, u32 y_g, u32 cb_b)
{
 u32 val = tvout_read(tvout, reg);

 val &= ~(TVO_VIP_REORDER_MASK << TVO_VIP_REORDER_R_SHIFT);
 val &= ~(TVO_VIP_REORDER_MASK << TVO_VIP_REORDER_G_SHIFT);
 val &= ~(TVO_VIP_REORDER_MASK << TVO_VIP_REORDER_B_SHIFT);
 val |= cr_r << TVO_VIP_REORDER_R_SHIFT;
 val |= y_g << TVO_VIP_REORDER_G_SHIFT;
 val |= cb_b << TVO_VIP_REORDER_B_SHIFT;

 tvout_write(tvout, val, reg);
}
