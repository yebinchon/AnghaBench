
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct sony_sc {TYPE_1__ list_node; } ;


 int list_del (TYPE_1__*) ;
 int sony_dev_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sony_remove_dev_list(struct sony_sc *sc)
{
 unsigned long flags;

 if (sc->list_node.next) {
  spin_lock_irqsave(&sony_dev_list_lock, flags);
  list_del(&(sc->list_node));
  spin_unlock_irqrestore(&sony_dev_list_lock, flags);
 }
}
