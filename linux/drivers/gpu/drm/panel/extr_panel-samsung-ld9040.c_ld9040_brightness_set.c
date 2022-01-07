
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld9040 {size_t brightness; } ;


 int ARRAY_SIZE (int ) ;
 int MCS_GAMMA_CTRL ;
 int ld9040_dcs_write (struct ld9040*,int ,int ) ;
 int ld9040_dcs_write_seq_static (struct ld9040*,int ,int,int) ;
 int * ld9040_gammas ;

__attribute__((used)) static void ld9040_brightness_set(struct ld9040 *ctx)
{
 ld9040_dcs_write(ctx, ld9040_gammas[ctx->brightness],
    ARRAY_SIZE(ld9040_gammas[ctx->brightness]));

 ld9040_dcs_write_seq_static(ctx, MCS_GAMMA_CTRL, 0x02, 0x5a);
}
