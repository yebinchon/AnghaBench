
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6e8aa0 {int version; } ;


 int ARRAY_SIZE (int const*) ;
 int s6e8aa0_dcs_write (struct s6e8aa0*,int const*,int ) ;

__attribute__((used)) static void s6e8aa0_etc_power_control(struct s6e8aa0 *ctx)
{
 static const u8 pwr142[] = {
  0xf4, 0xcf, 0x0a, 0x12, 0x10, 0x1e, 0x33, 0x02
 };

 static const u8 pwr32[] = {
  0xf4, 0xcf, 0x0a, 0x15, 0x10, 0x19, 0x33, 0x02
 };

 if (ctx->version < 142)
  s6e8aa0_dcs_write(ctx, pwr32, ARRAY_SIZE(pwr32));
 else
  s6e8aa0_dcs_write(ctx, pwr142, ARRAY_SIZE(pwr142));
}
