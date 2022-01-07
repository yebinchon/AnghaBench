
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
struct TYPE_10__ {int active; int synce; int blanke; int blanks; int blank2e; int blank2s; } ;
struct TYPE_9__ {int active; int synce; int blanke; int blanks; } ;
struct nv50_head_mode {int clock; TYPE_4__ v; TYPE_3__ h; } ;
struct nv50_head_atom {struct nv50_head_mode mode; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_11__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_5__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_12__ {TYPE_1__* core; } ;
struct TYPE_7__ {struct nv50_dmac chan; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_dmac*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_dmac*,int) ;
 TYPE_6__* nv50_disp (int ) ;

__attribute__((used)) static void
headc57d_mode(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 struct nv50_dmac *core = &nv50_disp(head->base.base.dev)->core->chan;
 struct nv50_head_mode *m = &asyh->mode;
 u32 *push;
 if ((push = evo_wait(core, 12))) {
  evo_mthd(push, 0x2064 + (head->base.index * 0x400), 5);
  evo_data(push, (m->v.active << 16) | m->h.active );
  evo_data(push, (m->v.synce << 16) | m->h.synce );
  evo_data(push, (m->v.blanke << 16) | m->h.blanke );
  evo_data(push, (m->v.blanks << 16) | m->h.blanks );
  evo_data(push, (m->v.blank2e << 16) | m->v.blank2s);
  evo_mthd(push, 0x200c + (head->base.index * 0x400), 1);
  evo_data(push, m->clock * 1000);
  evo_mthd(push, 0x2028 + (head->base.index * 0x400), 1);
  evo_data(push, m->clock * 1000);

  evo_mthd(push, 0x2030 + (head->base.index * 0x400), 1);
  evo_data(push, 0x00001014);
  evo_kick(push, core);
 }
}
