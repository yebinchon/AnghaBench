
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gf100_grctx_func {int alpha_nr; int attrib_nr; int attrib_nr_max; int alpha_nr_max; } ;
struct gf100_grctx {struct gf100_gr* gr; } ;
struct gf100_gr {int const tpc_total; int gpc_nr; int* ppc_nr; int const** ppc_tpc_nr; int* ppc_mask; TYPE_1__* func; } ;
struct TYPE_2__ {struct gf100_grctx_func* grctx; } ;


 int PPC_UNIT (int,int,int ) ;
 int mmio_refn (struct gf100_grctx*,int,int,int const,int const) ;
 int mmio_skip (struct gf100_grctx*,int const,int const) ;
 int mmio_vram (struct gf100_grctx*,int const,int,int) ;
 int mmio_wr32 (struct gf100_grctx*,int const,int const) ;

void
gf117_grctx_generate_attrib(struct gf100_grctx *info)
{
 struct gf100_gr *gr = info->gr;
 const struct gf100_grctx_func *grctx = gr->func->grctx;
 const u32 alpha = grctx->alpha_nr;
 const u32 beta = grctx->attrib_nr;
 const u32 size = 0x20 * (grctx->attrib_nr_max + grctx->alpha_nr_max);
 const int s = 12;
 const int b = mmio_vram(info, size * gr->tpc_total, (1 << s), 0);
 const int timeslice_mode = 1;
 const int max_batches = 0xffff;
 u32 bo = 0;
 u32 ao = bo + grctx->attrib_nr_max * gr->tpc_total;
 int gpc, ppc;

 mmio_refn(info, 0x418810, 0x80000000, s, b);
 mmio_refn(info, 0x419848, 0x10000000, s, b);
 mmio_wr32(info, 0x405830, (beta << 16) | alpha);
 mmio_wr32(info, 0x4064c4, ((alpha / 4) << 16) | max_batches);

 for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
  for (ppc = 0; ppc < gr->ppc_nr[gpc]; ppc++) {
   const u32 a = alpha * gr->ppc_tpc_nr[gpc][ppc];
   const u32 b = beta * gr->ppc_tpc_nr[gpc][ppc];
   const u32 t = timeslice_mode;
   const u32 o = PPC_UNIT(gpc, ppc, 0);
   if (!(gr->ppc_mask[gpc] & (1 << ppc)))
    continue;
   mmio_skip(info, o + 0xc0, (t << 28) | (b << 16) | ++bo);
   mmio_wr32(info, o + 0xc0, (t << 28) | (b << 16) | --bo);
   bo += grctx->attrib_nr_max * gr->ppc_tpc_nr[gpc][ppc];
   mmio_wr32(info, o + 0xe4, (a << 16) | ao);
   ao += grctx->alpha_nr_max * gr->ppc_tpc_nr[gpc][ppc];
  }
 }
}
