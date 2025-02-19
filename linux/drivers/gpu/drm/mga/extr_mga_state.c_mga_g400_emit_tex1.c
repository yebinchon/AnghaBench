
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int texctl2; int texctl; int texfilter; int texbordercol; int texorg; int texorg1; int texorg2; int texorg3; int texorg4; int texwidth; int texheight; } ;
typedef TYPE_1__ drm_mga_texture_regs_t ;
struct TYPE_6__ {TYPE_1__* tex_state; } ;
typedef TYPE_2__ drm_mga_sarea_t ;
struct TYPE_7__ {TYPE_2__* sarea_priv; } ;
typedef TYPE_3__ drm_mga_private_t ;


 int ADVANCE_DMA () ;
 int BEGIN_DMA (int) ;
 int DMA_BLOCK (int ,int,int ,int,int ,int,int ,int) ;
 int DMA_LOCALS ;
 int MGA_G400_TC2_MAGIC ;
 int MGA_G400_WR_MAGIC ;
 int MGA_MAP1_ENABLE ;
 int MGA_TEXBORDERCOL ;
 int MGA_TEXCTL ;
 int MGA_TEXCTL2 ;
 int MGA_TEXFILTER ;
 int MGA_TEXHEIGHT ;
 int MGA_TEXORG ;
 int MGA_TEXORG1 ;
 int MGA_TEXORG2 ;
 int MGA_TEXORG3 ;
 int MGA_TEXORG4 ;
 int MGA_TEXTRANS ;
 int MGA_TEXTRANSHIGH ;
 int MGA_TEXWIDTH ;
 int MGA_WR49 ;
 int MGA_WR52 ;
 int MGA_WR53 ;
 int MGA_WR57 ;
 int MGA_WR60 ;
 int MGA_WR61 ;

__attribute__((used)) static __inline__ void mga_g400_emit_tex1(drm_mga_private_t *dev_priv)
{
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_mga_texture_regs_t *tex = &sarea_priv->tex_state[1];
 DMA_LOCALS;




 BEGIN_DMA(5);

 DMA_BLOCK(MGA_TEXCTL2, (tex->texctl2 |
    MGA_MAP1_ENABLE |
    MGA_G400_TC2_MAGIC),
    MGA_TEXCTL, tex->texctl,
    MGA_TEXFILTER, tex->texfilter,
    MGA_TEXBORDERCOL, tex->texbordercol);

 DMA_BLOCK(MGA_TEXORG, tex->texorg,
    MGA_TEXORG1, tex->texorg1,
    MGA_TEXORG2, tex->texorg2, MGA_TEXORG3, tex->texorg3);

 DMA_BLOCK(MGA_TEXORG4, tex->texorg4,
    MGA_TEXWIDTH, tex->texwidth,
    MGA_TEXHEIGHT, tex->texheight, MGA_WR49, 0x00000000);

 DMA_BLOCK(MGA_WR57, 0x00000000,
    MGA_WR53, 0x00000000,
    MGA_WR61, 0x00000000,
    MGA_WR52, tex->texwidth | MGA_G400_WR_MAGIC);

 DMA_BLOCK(MGA_WR60, tex->texheight | MGA_G400_WR_MAGIC,
    MGA_TEXTRANS, 0x0000ffff,
    MGA_TEXTRANSHIGH, 0x0000ffff,
    MGA_TEXCTL2, tex->texctl2 | MGA_G400_TC2_MAGIC);

 ADVANCE_DMA();
}
