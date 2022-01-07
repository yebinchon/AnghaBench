
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {int buffer; int handle; } ;
struct TYPE_13__ {scalar_t__ olut; scalar_t__ mask; } ;
struct TYPE_12__ {struct drm_property_blob* gamma_lut; } ;
struct nv50_head_atom {TYPE_8__ olut; TYPE_4__ wndw; TYPE_3__ state; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct nv50_head {TYPE_9__* func; TYPE_2__ base; } ;
struct nv50_disp {TYPE_7__* core; } ;
struct drm_property_blob {int dummy; } ;
struct TYPE_18__ {int (* olut ) (struct nv50_head*,struct nv50_head_atom*) ;int olut_identity; } ;
struct TYPE_14__ {int handle; } ;
struct TYPE_15__ {TYPE_5__ vram; } ;
struct TYPE_16__ {TYPE_6__ chan; } ;


 int EINVAL ;
 struct nv50_disp* nv50_disp (int ) ;
 int stub1 (struct nv50_head*,struct nv50_head_atom*) ;

__attribute__((used)) static int
nv50_head_atomic_check_lut(struct nv50_head *head,
      struct nv50_head_atom *asyh)
{
 struct nv50_disp *disp = nv50_disp(head->base.base.dev);
 struct drm_property_blob *olut = asyh->state.gamma_lut;


 if (olut) {



  if (asyh->wndw.olut) {



   if (asyh->wndw.olut != asyh->wndw.mask)
    return -EINVAL;
   olut = ((void*)0);
  }
 }

 if (!olut && !head->func->olut_identity) {
  asyh->olut.handle = 0;
  return 0;
 }

 asyh->olut.handle = disp->core->chan.vram.handle;
 asyh->olut.buffer = !asyh->olut.buffer;
 head->func->olut(head, asyh);
 return 0;
}
