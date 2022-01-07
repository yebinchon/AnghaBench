
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_tvout {int dummy; } ;


 int TVO_VIP_RND_MASK ;
 int TVO_VIP_RND_SHIFT ;
 int tvout_read (struct sti_tvout*,int) ;
 int tvout_write (struct sti_tvout*,int,int) ;

__attribute__((used)) static void tvout_vip_set_rnd(struct sti_tvout *tvout, int reg, u32 rnd)
{
 u32 val = tvout_read(tvout, reg);

 val &= ~(TVO_VIP_RND_MASK << TVO_VIP_RND_SHIFT);
 val |= rnd << TVO_VIP_RND_SHIFT;
 tvout_write(tvout, val, reg);
}
