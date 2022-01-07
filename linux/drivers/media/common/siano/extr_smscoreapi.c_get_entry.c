
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_device_t {int bufferslock; TYPE_1__ buffers; } ;
struct smscore_buffer_t {int entry; } ;


 int list_del (int *) ;
 int list_empty (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct smscore_buffer_t *get_entry(struct smscore_device_t *coredev)
{
 struct smscore_buffer_t *cb = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&coredev->bufferslock, flags);
 if (!list_empty(&coredev->buffers)) {
  cb = (struct smscore_buffer_t *) coredev->buffers.next;
  list_del(&cb->entry);
 }
 spin_unlock_irqrestore(&coredev->bufferslock, flags);
 return cb;
}
