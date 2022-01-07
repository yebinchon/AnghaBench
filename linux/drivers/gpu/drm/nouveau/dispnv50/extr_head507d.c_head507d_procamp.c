
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int sin; int cos; } ;
struct TYPE_8__ {TYPE_1__ sat; } ;
struct nv50_head_atom {TYPE_2__ procamp; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_11__ {int index; TYPE_4__ base; } ;
struct nv50_head {TYPE_5__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_12__ {TYPE_3__* core; } ;
struct TYPE_9__ {struct nv50_dmac chan; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_dmac*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_dmac*,int) ;
 TYPE_6__* nv50_disp (int ) ;

void
head507d_procamp(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 struct nv50_dmac *core = &nv50_disp(head->base.base.dev)->core->chan;
 u32 *push;
 if ((push = evo_wait(core, 2))) {
  evo_mthd(push, 0x08a8 + (head->base.index * 0x400), 1);
  evo_data(push, asyh->procamp.sat.sin << 20 |
          asyh->procamp.sat.cos << 8);
  evo_kick(push, core);
 }
}
