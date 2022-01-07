
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dc8051_lock; } ;


 int _dc_start (struct hfi1_devdata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dc_start(struct hfi1_devdata *dd)
{
 mutex_lock(&dd->dc8051_lock);
 _dc_start(dd);
 mutex_unlock(&dd->dc8051_lock);
}
