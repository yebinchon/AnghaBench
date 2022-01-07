
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int size; int mode; int output_mode; int handle; int offset; } ;
struct nv50_head_atom {TYPE_4__ olut; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_8__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_3__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_10__ {TYPE_1__* core; } ;
struct TYPE_6__ {struct nv50_dmac chan; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_dmac*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_dmac*,int) ;
 TYPE_5__* nv50_disp (int ) ;

void
headc57d_olut_set(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 struct nv50_dmac *core = &nv50_disp(head->base.base.dev)->core->chan;
 u32 *push;
 if ((push = evo_wait(core, 4))) {
  evo_mthd(push, 0x2280 + (head->base.index * 0x400), 4);
  evo_data(push, asyh->olut.size << 8 |
          asyh->olut.mode << 2 |
          asyh->olut.output_mode);
  evo_data(push, 0xffffffff);
  evo_data(push, asyh->olut.handle);
  evo_data(push, asyh->olut.offset >> 8);
  evo_kick(push, core);
 }
}
