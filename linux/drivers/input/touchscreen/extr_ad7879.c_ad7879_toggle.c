
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7879 {int disabled; TYPE_1__* input; int suspended; } ;
struct TYPE_2__ {scalar_t__ users; int mutex; } ;


 int __ad7879_disable (struct ad7879*) ;
 int __ad7879_enable (struct ad7879*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ad7879_toggle(struct ad7879 *ts, bool disable)
{
 mutex_lock(&ts->input->mutex);

 if (!ts->suspended && ts->input->users != 0) {

  if (disable) {
   if (ts->disabled)
    __ad7879_enable(ts);
  } else {
   if (!ts->disabled)
    __ad7879_disable(ts);
  }
 }

 ts->disabled = disable;

 mutex_unlock(&ts->input->mutex);
}
