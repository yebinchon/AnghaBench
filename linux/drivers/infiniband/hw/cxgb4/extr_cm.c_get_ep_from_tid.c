
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_ep {int com; } ;
struct c4iw_dev {int hwtids; } ;


 int c4iw_get_ep (int *) ;
 struct c4iw_ep* xa_load (int *,unsigned int) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct c4iw_ep *get_ep_from_tid(struct c4iw_dev *dev, unsigned int tid)
{
 struct c4iw_ep *ep;
 unsigned long flags;

 xa_lock_irqsave(&dev->hwtids, flags);
 ep = xa_load(&dev->hwtids, tid);
 if (ep)
  c4iw_get_ep(&ep->com);
 xa_unlock_irqrestore(&dev->hwtids, flags);
 return ep;
}
