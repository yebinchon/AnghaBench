
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6e8aa0 {scalar_t__ id; } ;


 int s6e8aa0_dcs_write_seq (struct s6e8aa0*,int,int,int) ;

__attribute__((used)) static void s6e8aa0_etc_elvss_control(struct s6e8aa0 *ctx)
{
 u8 id = ctx->id ? 0 : 0x95;

 s6e8aa0_dcs_write_seq(ctx, 0xb1, 0x04, id);
}
