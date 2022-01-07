
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e3ha2 {int dummy; } ;


 int s6e3ha2_dcs_write_seq_static (struct s6e3ha2*,int,int,int,int,int,int) ;

__attribute__((used)) static int s6e3ha2_te_start_setting(struct s6e3ha2 *ctx)
{
 s6e3ha2_dcs_write_seq_static(ctx, 0xb9, 0x10, 0x09, 0xff, 0x00, 0x09);
 return 0;
}
