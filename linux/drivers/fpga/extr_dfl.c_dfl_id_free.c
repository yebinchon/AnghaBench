
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum dfl_id_type { ____Placeholder_dfl_id_type } dfl_id_type ;
struct TYPE_2__ {int id; } ;


 int DFL_ID_MAX ;
 int WARN_ON (int) ;
 TYPE_1__* dfl_devs ;
 int dfl_id_mutex ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dfl_id_free(enum dfl_id_type type, int id)
{
 WARN_ON(type >= DFL_ID_MAX);
 mutex_lock(&dfl_id_mutex);
 idr_remove(&dfl_devs[type].id, id);
 mutex_unlock(&dfl_id_mutex);
}
