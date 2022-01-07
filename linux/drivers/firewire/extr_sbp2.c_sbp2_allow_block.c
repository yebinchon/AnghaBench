
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_target {int lock; int dont_block; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void sbp2_allow_block(struct sbp2_target *tgt)
{
 spin_lock_irq(&tgt->lock);
 --tgt->dont_block;
 spin_unlock_irq(&tgt->lock);
}
