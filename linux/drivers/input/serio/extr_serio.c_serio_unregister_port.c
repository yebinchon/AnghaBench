
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serio_destroy_port (struct serio*) ;
 int serio_disconnect_port (struct serio*) ;
 int serio_mutex ;

void serio_unregister_port(struct serio *serio)
{
 mutex_lock(&serio_mutex);
 serio_disconnect_port(serio);
 serio_destroy_port(serio);
 mutex_unlock(&serio_mutex);
}
