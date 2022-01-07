
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport_driver {int dummy; } ;
struct gameport {int drv_mutex; struct gameport_driver* drv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gameport_set_drv(struct gameport *gameport, struct gameport_driver *drv)
{
 mutex_lock(&gameport->drv_mutex);
 gameport->drv = drv;
 mutex_unlock(&gameport->drv_mutex);
}
