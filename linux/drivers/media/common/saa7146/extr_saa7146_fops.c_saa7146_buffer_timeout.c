
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct saa7146_dmaqueue {scalar_t__ curr; struct saa7146_dev* dev; } ;
struct saa7146_dev {int slock; } ;


 int DEB_D (char*,scalar_t__) ;
 int DEB_EE (char*,struct saa7146_dev*,struct saa7146_dmaqueue*) ;
 int VIDEOBUF_ERROR ;
 struct saa7146_dmaqueue* from_timer (int ,struct timer_list*,int ) ;
 struct saa7146_dmaqueue* q ;
 int saa7146_buffer_finish (struct saa7146_dev*,struct saa7146_dmaqueue*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timeout ;

void saa7146_buffer_timeout(struct timer_list *t)
{
 struct saa7146_dmaqueue *q = from_timer(q, t, timeout);
 struct saa7146_dev *dev = q->dev;
 unsigned long flags;

 DEB_EE("dev:%p, dmaq:%p\n", dev, q);

 spin_lock_irqsave(&dev->slock,flags);
 if (q->curr) {
  DEB_D("timeout on %p\n", q->curr);
  saa7146_buffer_finish(dev,q,VIDEOBUF_ERROR);
 }
 spin_unlock_irqrestore(&dev->slock,flags);
}
