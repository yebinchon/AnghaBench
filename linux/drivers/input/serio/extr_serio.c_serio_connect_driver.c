
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int (* connect ) (struct serio*,struct serio_driver*) ;} ;
struct serio {int drv_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct serio*,struct serio_driver*) ;

__attribute__((used)) static int serio_connect_driver(struct serio *serio, struct serio_driver *drv)
{
 int retval;

 mutex_lock(&serio->drv_mutex);
 retval = drv->connect(serio, drv);
 mutex_unlock(&serio->drv_mutex);

 return retval;
}
