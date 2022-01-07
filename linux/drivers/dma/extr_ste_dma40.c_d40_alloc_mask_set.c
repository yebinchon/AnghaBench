
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_phy_res {int allocated_src; int allocated_dst; int lock; } ;


 int BIT (int) ;
 int D40_ALLOC_FREE ;
 void* D40_ALLOC_LOG_FREE ;
 void* D40_ALLOC_PHY ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool d40_alloc_mask_set(struct d40_phy_res *phy,
          bool is_src, int log_event_line, bool is_log,
          bool *first_user)
{
 unsigned long flags;
 spin_lock_irqsave(&phy->lock, flags);

 *first_user = ((phy->allocated_src | phy->allocated_dst)
   == D40_ALLOC_FREE);

 if (!is_log) {

  if (phy->allocated_src == D40_ALLOC_FREE &&
      phy->allocated_dst == D40_ALLOC_FREE) {
   phy->allocated_dst = D40_ALLOC_PHY;
   phy->allocated_src = D40_ALLOC_PHY;
   goto found_unlock;
  } else
   goto not_found_unlock;
 }


 if (is_src) {
  if (phy->allocated_src == D40_ALLOC_PHY)
   goto not_found_unlock;

  if (phy->allocated_src == D40_ALLOC_FREE)
   phy->allocated_src = D40_ALLOC_LOG_FREE;

  if (!(phy->allocated_src & BIT(log_event_line))) {
   phy->allocated_src |= BIT(log_event_line);
   goto found_unlock;
  } else
   goto not_found_unlock;
 } else {
  if (phy->allocated_dst == D40_ALLOC_PHY)
   goto not_found_unlock;

  if (phy->allocated_dst == D40_ALLOC_FREE)
   phy->allocated_dst = D40_ALLOC_LOG_FREE;

  if (!(phy->allocated_dst & BIT(log_event_line))) {
   phy->allocated_dst |= BIT(log_event_line);
   goto found_unlock;
  }
 }
 not_found_unlock:
 spin_unlock_irqrestore(&phy->lock, flags);
 return 0;
 found_unlock:
 spin_unlock_irqrestore(&phy->lock, flags);
 return 1;
}
