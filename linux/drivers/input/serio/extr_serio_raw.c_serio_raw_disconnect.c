
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw {int dead; int kref; int node; int dev; } ;
struct serio {int dummy; } ;


 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int misc_deregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serio_close (struct serio*) ;
 struct serio_raw* serio_get_drvdata (struct serio*) ;
 int serio_raw_free ;
 int serio_raw_hangup (struct serio_raw*) ;
 int serio_raw_mutex ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void serio_raw_disconnect(struct serio *serio)
{
 struct serio_raw *serio_raw = serio_get_drvdata(serio);

 misc_deregister(&serio_raw->dev);

 mutex_lock(&serio_raw_mutex);
 serio_raw->dead = 1;
 list_del_init(&serio_raw->node);
 mutex_unlock(&serio_raw_mutex);

 serio_raw_hangup(serio_raw);

 serio_close(serio);
 kref_put(&serio_raw->kref, serio_raw_free);

 serio_set_drvdata(serio, ((void*)0));
}
