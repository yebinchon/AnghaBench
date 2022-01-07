
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_comp {int active_qps; } ;


 int device_list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
isert_comp_put(struct isert_comp *comp)
{
 mutex_lock(&device_list_mutex);
 comp->active_qps--;
 mutex_unlock(&device_list_mutex);
}
