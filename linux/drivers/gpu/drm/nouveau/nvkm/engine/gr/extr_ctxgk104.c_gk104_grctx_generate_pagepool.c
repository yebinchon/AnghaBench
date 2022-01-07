
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gf100_grctx_func {int pagepool_size; } ;
struct gf100_grctx {TYPE_2__* gr; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {struct gf100_grctx_func* grctx; } ;


 int mmio_refn (struct gf100_grctx*,int,int,int const,int const) ;
 int mmio_vram (struct gf100_grctx*,int ,int,int) ;
 int mmio_wr32 (struct gf100_grctx*,int,int) ;

void
gk104_grctx_generate_pagepool(struct gf100_grctx *info)
{
 const struct gf100_grctx_func *grctx = info->gr->func->grctx;
 const int s = 8;
 const int b = mmio_vram(info, grctx->pagepool_size, (1 << s), 1);
 mmio_refn(info, 0x40800c, 0x00000000, s, b);
 mmio_wr32(info, 0x408010, 0x80000000);
 mmio_refn(info, 0x419004, 0x00000000, s, b);
 mmio_wr32(info, 0x419008, 0x00000000);
 mmio_wr32(info, 0x4064cc, 0x80000000);
}
