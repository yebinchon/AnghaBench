
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_tvout {int dummy; } ;


 int TVO_IN_FMT_SIGNED ;
 int tvout_read (struct sti_tvout*,int) ;
 int tvout_write (struct sti_tvout*,int ,int) ;

__attribute__((used)) static void tvout_vip_set_in_vid_fmt(struct sti_tvout *tvout,
  int reg, u32 in_vid_fmt)
{
 u32 val = tvout_read(tvout, reg);

 val &= ~TVO_IN_FMT_SIGNED;
 val |= in_vid_fmt;
 tvout_write(tvout, val, reg);
}
