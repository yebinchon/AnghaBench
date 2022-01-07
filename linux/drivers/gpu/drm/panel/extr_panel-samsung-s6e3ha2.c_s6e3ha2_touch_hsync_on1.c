
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e3ha2 {int dummy; } ;


 int s6e3ha2_dcs_write_seq_static (struct s6e3ha2*,int,int,int,int,int,int,int) ;

__attribute__((used)) static int s6e3ha2_touch_hsync_on1(struct s6e3ha2 *ctx)
{
 s6e3ha2_dcs_write_seq_static(ctx, 0xbd, 0x33, 0x11, 0x02,
     0x16, 0x02, 0x16);
 return 0;
}
