
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
struct TYPE_6__ {int cpp; } ;
struct nv50_head_atom {TYPE_1__ ovly; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_9__ {int index; TYPE_3__ base; } ;
struct nv50_head {TYPE_4__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_10__ {TYPE_2__* core; } ;
struct TYPE_7__ {struct nv50_dmac chan; } ;


 int WARN_ON (int) ;
 int evo_data (int*,int) ;
 int evo_kick (int*,struct nv50_dmac*) ;
 int evo_mthd (int*,int,int) ;
 int* evo_wait (struct nv50_dmac*,int) ;
 TYPE_5__* nv50_disp (int ) ;

void
head507d_ovly(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 struct nv50_dmac *core = &nv50_disp(head->base.base.dev)->core->chan;
 u32 bounds = 0;
 u32 *push;

 if (asyh->ovly.cpp) {
  switch (asyh->ovly.cpp) {
  case 4: bounds |= 0x00000300; break;
  case 2: bounds |= 0x00000100; break;
  default:
   WARN_ON(1);
   break;
  }
  bounds |= 0x00000001;
 } else {
  bounds |= 0x00000100;
 }

 if ((push = evo_wait(core, 2))) {
  evo_mthd(push, 0x0904 + head->base.index * 0x400, 1);
  evo_data(push, bounds);
  evo_kick(push, core);
 }
}
