
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads7846 {int disabled; int lock; int suspended; } ;


 int __ads7846_disable (struct ads7846*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ads7846_disable(struct ads7846 *ts)
{
 mutex_lock(&ts->lock);

 if (!ts->disabled) {

  if (!ts->suspended)
   __ads7846_disable(ts);

  ts->disabled = 1;
 }

 mutex_unlock(&ts->lock);
}
