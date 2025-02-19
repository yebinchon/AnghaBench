
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_10__ {scalar_t__* offset; } ;
struct nv50_wndw_atom {TYPE_2__ image; } ;
struct TYPE_9__ {int dev; } ;
struct nv50_wndw {TYPE_1__ plane; } ;
struct TYPE_12__ {scalar_t__ handle; scalar_t__ offset; int visible; } ;
struct TYPE_11__ {int curs; } ;
struct nv50_head_atom {TYPE_4__ curs; TYPE_3__ set; } ;
struct TYPE_16__ {TYPE_7__* core; } ;
struct TYPE_13__ {scalar_t__ handle; } ;
struct TYPE_14__ {TYPE_5__ vram; } ;
struct TYPE_15__ {TYPE_6__ chan; } ;


 TYPE_8__* nv50_disp (int ) ;

__attribute__((used)) static void
curs507a_prepare(struct nv50_wndw *wndw, struct nv50_head_atom *asyh,
   struct nv50_wndw_atom *asyw)
{
 u32 handle = nv50_disp(wndw->plane.dev)->core->chan.vram.handle;
 u32 offset = asyw->image.offset[0];
 if (asyh->curs.handle != handle || asyh->curs.offset != offset) {
  asyh->curs.handle = handle;
  asyh->curs.offset = offset;
  asyh->set.curs = asyh->curs.visible;
 }
}
