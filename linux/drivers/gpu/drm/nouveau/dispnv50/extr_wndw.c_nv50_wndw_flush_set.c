
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int point; int mask; scalar_t__ blend; scalar_t__ scale; scalar_t__ csc; scalar_t__ xlut; scalar_t__ image; scalar_t__ ntfy; scalar_t__ sema; } ;
struct TYPE_9__ {int load; int buffer; int offset; } ;
struct TYPE_10__ {TYPE_2__ i; } ;
struct TYPE_8__ {int interval; scalar_t__ mode; } ;
struct nv50_wndw_atom {TYPE_5__ set; TYPE_3__ xlut; scalar_t__ ilut; TYPE_1__ image; } ;
struct TYPE_14__ {size_t type; int data; int wimm; } ;
struct nv50_wndw {TYPE_7__ interlock; TYPE_6__* immd; TYPE_4__* func; int ilut; } ;
struct TYPE_13__ {int (* update ) (struct nv50_wndw*,int*) ;int (* point ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;} ;
struct TYPE_11__ {int (* blend_set ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;int (* scale_set ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;int (* csc_set ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;int (* xlut_set ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;int (* image_set ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;int (* ntfy_set ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;int (* sema_set ) (struct nv50_wndw*,struct nv50_wndw_atom*) ;} ;


 size_t NV50_DISP_INTERLOCK_CORE ;
 size_t NV50_DISP_INTERLOCK_WIMM ;
 int nv50_lut_load (int *,int ,scalar_t__,int ) ;
 int stub1 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub2 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub3 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub4 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub5 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub6 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub7 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub8 (struct nv50_wndw*,struct nv50_wndw_atom*) ;
 int stub9 (struct nv50_wndw*,int*) ;

void
nv50_wndw_flush_set(struct nv50_wndw *wndw, u32 *interlock,
      struct nv50_wndw_atom *asyw)
{
 if (interlock[NV50_DISP_INTERLOCK_CORE]) {
  asyw->image.mode = 0;
  asyw->image.interval = 1;
 }

 if (asyw->set.sema ) wndw->func->sema_set (wndw, asyw);
 if (asyw->set.ntfy ) wndw->func->ntfy_set (wndw, asyw);
 if (asyw->set.image) wndw->func->image_set(wndw, asyw);

 if (asyw->set.xlut ) {
  if (asyw->ilut) {
   asyw->xlut.i.offset =
    nv50_lut_load(&wndw->ilut, asyw->xlut.i.buffer,
           asyw->ilut, asyw->xlut.i.load);
  }
  wndw->func->xlut_set(wndw, asyw);
 }

 if (asyw->set.csc ) wndw->func->csc_set (wndw, asyw);
 if (asyw->set.scale) wndw->func->scale_set(wndw, asyw);
 if (asyw->set.blend) wndw->func->blend_set(wndw, asyw);
 if (asyw->set.point) {
  if (asyw->set.point = 0, asyw->set.mask)
   interlock[wndw->interlock.type] |= wndw->interlock.data;
  interlock[NV50_DISP_INTERLOCK_WIMM] |= wndw->interlock.wimm;

  wndw->immd->point(wndw, asyw);
  wndw->immd->update(wndw, interlock);
 } else {
  interlock[wndw->interlock.type] |= wndw->interlock.data;
 }
}
