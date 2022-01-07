
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct its_vpe {int dummy; } ;
struct TYPE_4__ {int has_direct_lpi; } ;
struct TYPE_3__ {int lock; } ;


 TYPE_2__* gic_rdists ;
 int its_vpe_db_proxy_unmap_locked (struct its_vpe*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ vpe_proxy ;

__attribute__((used)) static void its_vpe_db_proxy_unmap(struct its_vpe *vpe)
{
 if (!gic_rdists->has_direct_lpi) {
  unsigned long flags;

  raw_spin_lock_irqsave(&vpe_proxy.lock, flags);
  its_vpe_db_proxy_unmap_locked(vpe);
  raw_spin_unlock_irqrestore(&vpe_proxy.lock, flags);
 }
}
