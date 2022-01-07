
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync; } ;
struct wiimote_data {TYPE_1__ state; } ;


 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;

__attribute__((used)) static inline int wiimote_cmd_acquire(struct wiimote_data *wdata)
{
 return mutex_lock_interruptible(&wdata->state.sync) ? -ERESTARTSYS : 0;
}
