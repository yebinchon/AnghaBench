
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


typedef int u32 ;
struct TYPE_15__ {scalar_t__ handle; } ;
struct TYPE_14__ {int olut; int curs; } ;
struct TYPE_13__ {int visible; } ;
struct TYPE_12__ {int offset; int h; int w; int layout; int pitch; int blocks; int blockh; int kind; int format; int handle; int y; int x; } ;
struct nv50_head_atom {TYPE_7__ olut; TYPE_6__ set; TYPE_5__ curs; TYPE_4__ core; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_11__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_3__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_16__ {TYPE_1__* core; } ;
struct TYPE_9__ {struct nv50_dmac chan; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_dmac*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_dmac*,int) ;
 TYPE_8__* nv50_disp (int ) ;

__attribute__((used)) static void
head507d_core_set(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 struct nv50_dmac *core = &nv50_disp(head->base.base.dev)->core->chan;
 u32 *push;
 if ((push = evo_wait(core, 9))) {
  evo_mthd(push, 0x0860 + head->base.index * 0x400, 1);
  evo_data(push, asyh->core.offset >> 8);
  evo_mthd(push, 0x0868 + head->base.index * 0x400, 4);
  evo_data(push, asyh->core.h << 16 | asyh->core.w);
  evo_data(push, asyh->core.layout << 20 |
          (asyh->core.pitch >> 8) << 8 |
          asyh->core.blocks << 8 |
          asyh->core.blockh);
  evo_data(push, asyh->core.kind << 16 |
          asyh->core.format << 8);
  evo_data(push, asyh->core.handle);
  evo_mthd(push, 0x08c0 + head->base.index * 0x400, 1);
  evo_data(push, asyh->core.y << 16 | asyh->core.x);
  evo_kick(push, core);





  asyh->set.curs = asyh->curs.visible;
  asyh->set.olut = asyh->olut.handle != 0;
 }
}
