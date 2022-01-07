
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int busy; int tasklet; int lock; int queue; } ;
struct ablkcipher_request {int dummy; } ;


 int ablkcipher_enqueue_request (int *,struct ablkcipher_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int s5p_aes_handle_req(struct s5p_aes_dev *dev,
         struct ablkcipher_request *req)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&dev->lock, flags);
 err = ablkcipher_enqueue_request(&dev->queue, req);
 if (dev->busy) {
  spin_unlock_irqrestore(&dev->lock, flags);
  return err;
 }
 dev->busy = 1;

 spin_unlock_irqrestore(&dev->lock, flags);

 tasklet_schedule(&dev->tasklet);

 return err;
}
