
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int drv_mutex; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* cleanup ) (struct serio*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct serio*) ;

__attribute__((used)) static void serio_cleanup(struct serio *serio)
{
 mutex_lock(&serio->drv_mutex);
 if (serio->drv && serio->drv->cleanup)
  serio->drv->cleanup(serio);
 mutex_unlock(&serio->drv_mutex);
}
