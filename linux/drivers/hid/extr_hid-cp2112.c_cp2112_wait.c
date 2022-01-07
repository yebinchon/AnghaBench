
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp2112_device {int wait; } ;
typedef int atomic_t ;


 int ERESTARTSYS ;
 int ETIMEDOUT ;
 int RESPONSE_TIMEOUT ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

__attribute__((used)) static int cp2112_wait(struct cp2112_device *dev, atomic_t *avail)
{
 int ret = 0;
 ret = wait_event_interruptible_timeout(dev->wait,
  atomic_read(avail), msecs_to_jiffies(RESPONSE_TIMEOUT));
 if (-ERESTARTSYS == ret)
  return ret;
 if (!ret)
  return -ETIMEDOUT;

 atomic_set(avail, 0);
 return 0;
}
