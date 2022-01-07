
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_man {int cur_mutex; } ;


 int ERESTARTSYS ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;

__attribute__((used)) static int vmw_cmdbuf_cur_lock(struct vmw_cmdbuf_man *man, bool interruptible)
{
 if (interruptible) {
  if (mutex_lock_interruptible(&man->cur_mutex))
   return -ERESTARTSYS;
 } else {
  mutex_lock(&man->cur_mutex);
 }

 return 0;
}
