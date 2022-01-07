
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_cmdbuf_man {TYPE_1__* dev_priv; int idle_queue; } ;
struct TYPE_3__ {int cmdbuf_waiters; } ;


 int EBUSY ;
 int SVGA_IRQFLAG_COMMAND_BUFFER ;
 int vmw_cmdbuf_cur_flush (struct vmw_cmdbuf_man*,int) ;
 int vmw_cmdbuf_man_idle (struct vmw_cmdbuf_man*,int) ;
 int vmw_generic_waiter_add (TYPE_1__*,int ,int *) ;
 int vmw_generic_waiter_remove (TYPE_1__*,int ,int *) ;
 int wait_event_interruptible_timeout (int ,int ,unsigned long) ;
 int wait_event_timeout (int ,int ,unsigned long) ;

int vmw_cmdbuf_idle(struct vmw_cmdbuf_man *man, bool interruptible,
      unsigned long timeout)
{
 int ret;

 ret = vmw_cmdbuf_cur_flush(man, interruptible);
 vmw_generic_waiter_add(man->dev_priv,
          SVGA_IRQFLAG_COMMAND_BUFFER,
          &man->dev_priv->cmdbuf_waiters);

 if (interruptible) {
  ret = wait_event_interruptible_timeout
   (man->idle_queue, vmw_cmdbuf_man_idle(man, 1),
    timeout);
 } else {
  ret = wait_event_timeout
   (man->idle_queue, vmw_cmdbuf_man_idle(man, 1),
    timeout);
 }
 vmw_generic_waiter_remove(man->dev_priv,
      SVGA_IRQFLAG_COMMAND_BUFFER,
      &man->dev_priv->cmdbuf_waiters);
 if (ret == 0) {
  if (!vmw_cmdbuf_man_idle(man, 1))
   ret = -EBUSY;
  else
   ret = 0;
 }
 if (ret > 0)
  ret = 0;

 return ret;
}
