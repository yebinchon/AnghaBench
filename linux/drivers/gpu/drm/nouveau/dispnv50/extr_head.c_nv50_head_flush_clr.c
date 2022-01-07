
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union nv50_head_atom_mask {int mask; scalar_t__ curs; scalar_t__ core; scalar_t__ olut; } ;
struct TYPE_5__ {int mask; } ;
struct TYPE_4__ {int mask; } ;
struct nv50_head_atom {TYPE_2__ set; TYPE_1__ clr; } ;
struct nv50_head {TYPE_3__* func; } ;
struct TYPE_6__ {int (* curs_clr ) (struct nv50_head*) ;int (* core_clr ) (struct nv50_head*) ;int (* olut_clr ) (struct nv50_head*) ;} ;


 int stub1 (struct nv50_head*) ;
 int stub2 (struct nv50_head*) ;
 int stub3 (struct nv50_head*) ;

void
nv50_head_flush_clr(struct nv50_head *head,
      struct nv50_head_atom *asyh, bool flush)
{
 union nv50_head_atom_mask clr = {
  .mask = asyh->clr.mask & ~(flush ? 0 : asyh->set.mask),
 };
 if (clr.olut) head->func->olut_clr(head);
 if (clr.core) head->func->core_clr(head);
 if (clr.curs) head->func->curs_clr(head);
}
