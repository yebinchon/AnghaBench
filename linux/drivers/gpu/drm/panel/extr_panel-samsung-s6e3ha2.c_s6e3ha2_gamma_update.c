
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e3ha2 {int dummy; } ;


 int ndelay (int) ;
 int s6e3ha2_dcs_write_seq_static (struct s6e3ha2*,int,int) ;

__attribute__((used)) static int s6e3ha2_gamma_update(struct s6e3ha2 *ctx)
{
 s6e3ha2_dcs_write_seq_static(ctx, 0xf7, 0x03);
 ndelay(100);
 s6e3ha2_dcs_write_seq_static(ctx, 0xf7, 0x00);
 return 0;
}
