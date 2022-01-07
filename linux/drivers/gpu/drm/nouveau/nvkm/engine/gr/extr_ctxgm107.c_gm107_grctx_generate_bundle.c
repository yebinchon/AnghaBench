
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gf100_grctx_func {int bundle_size; int bundle_token_limit; int bundle_min_gpm_fifo_depth; } ;
struct gf100_grctx {TYPE_1__* gr; } ;
struct TYPE_4__ {struct gf100_grctx_func* grctx; } ;
struct TYPE_3__ {TYPE_2__* func; } ;


 int min (int ,int) ;
 int mmio_refn (struct gf100_grctx*,int,int,int const,int const) ;
 int mmio_vram (struct gf100_grctx*,int,int,int) ;
 int mmio_wr32 (struct gf100_grctx*,int,int const) ;

void
gm107_grctx_generate_bundle(struct gf100_grctx *info)
{
 const struct gf100_grctx_func *grctx = info->gr->func->grctx;
 const u32 state_limit = min(grctx->bundle_min_gpm_fifo_depth,
        grctx->bundle_size / 0x20);
 const u32 token_limit = grctx->bundle_token_limit;
 const int s = 8;
 const int b = mmio_vram(info, grctx->bundle_size, (1 << s), 1);
 mmio_refn(info, 0x408004, 0x00000000, s, b);
 mmio_wr32(info, 0x408008, 0x80000000 | (grctx->bundle_size >> s));
 mmio_refn(info, 0x418e24, 0x00000000, s, b);
 mmio_wr32(info, 0x418e28, 0x80000000 | (grctx->bundle_size >> s));
 mmio_wr32(info, 0x4064c8, (state_limit << 16) | token_limit);
}
