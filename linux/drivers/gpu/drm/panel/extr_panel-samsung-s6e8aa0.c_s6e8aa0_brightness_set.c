
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct s6e8aa0 {size_t brightness; int version; TYPE_1__* variant; scalar_t__ error; } ;
struct TYPE_2__ {int ** gamma_tables; } ;


 int GAMMA_TABLE_LEN ;
 int s6e8aa0_dcs_write (struct s6e8aa0*,int const*,int ) ;
 int s6e8aa0_dcs_write_seq_static (struct s6e8aa0*,int,int) ;
 int s6e8aa0_elvss_nvm_set (struct s6e8aa0*) ;

__attribute__((used)) static void s6e8aa0_brightness_set(struct s6e8aa0 *ctx)
{
 const u8 *gamma;

 if (ctx->error)
  return;

 gamma = ctx->variant->gamma_tables[ctx->brightness];

 if (ctx->version >= 142)
  s6e8aa0_elvss_nvm_set(ctx);

 s6e8aa0_dcs_write(ctx, gamma, GAMMA_TABLE_LEN);


 s6e8aa0_dcs_write_seq_static(ctx, 0xf7, 0x03);
}
