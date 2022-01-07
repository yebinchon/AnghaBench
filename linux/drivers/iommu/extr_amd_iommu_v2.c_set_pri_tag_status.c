
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct pasid_state {int lock; TYPE_1__* pri; } ;
struct TYPE_2__ {int status; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_pri_tag_status(struct pasid_state *pasid_state,
          u16 tag, int status)
{
 unsigned long flags;

 spin_lock_irqsave(&pasid_state->lock, flags);
 pasid_state->pri[tag].status = status;
 spin_unlock_irqrestore(&pasid_state->lock, flags);
}
