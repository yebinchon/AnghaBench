
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_type2_desc {int next_desc; int fn; int en; int csfi; int cdfi; int csei; int cdei; int cicr; int addr; } ;
struct omap_sg {int t2_desc_paddr; int fn; int fi; int ei; int addr; int en; struct omap_type2_desc* t2_desc; } ;
struct omap_desc {int fi; int ei; int cicr; struct omap_sg* sg; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int CICR_BLOCK_IE ;
 int DESC_NTYPE_TYPE2 ;
 int DESC_NXT_DV_REFRESH ;
 int DESC_NXT_DV_REUSE ;
 int DESC_NXT_SV_REFRESH ;
 int DESC_NXT_SV_REUSE ;



__attribute__((used)) static void omap_dma_fill_type2_desc(struct omap_desc *d, int idx,
         enum dma_transfer_direction dir, bool last)
{
 struct omap_sg *sg = &d->sg[idx];
 struct omap_type2_desc *t2_desc = sg->t2_desc;

 if (idx)
  d->sg[idx - 1].t2_desc->next_desc = sg->t2_desc_paddr;
 if (last)
  t2_desc->next_desc = 0xfffffffc;

 t2_desc->en = sg->en;
 t2_desc->addr = sg->addr;
 t2_desc->fn = sg->fn & 0xffff;
 t2_desc->cicr = d->cicr;
 if (!last)
  t2_desc->cicr &= ~CICR_BLOCK_IE;

 switch (dir) {
 case 129:
  t2_desc->cdei = sg->ei;
  t2_desc->csei = d->ei;
  t2_desc->cdfi = sg->fi;
  t2_desc->csfi = d->fi;

  t2_desc->en |= DESC_NXT_DV_REFRESH;
  t2_desc->en |= DESC_NXT_SV_REUSE;
  break;
 case 128:
  t2_desc->cdei = d->ei;
  t2_desc->csei = sg->ei;
  t2_desc->cdfi = d->fi;
  t2_desc->csfi = sg->fi;

  t2_desc->en |= DESC_NXT_SV_REFRESH;
  t2_desc->en |= DESC_NXT_DV_REUSE;
  break;
 default:
  return;
 }

 t2_desc->en |= DESC_NTYPE_TYPE2;
}
