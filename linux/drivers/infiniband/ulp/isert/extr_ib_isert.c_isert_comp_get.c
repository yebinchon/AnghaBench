
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_device {int comps_used; struct isert_comp* comps; } ;
struct isert_conn {struct isert_device* device; } ;
struct isert_comp {scalar_t__ active_qps; } ;


 int device_list_mutex ;
 int isert_info (char*,struct isert_conn*,struct isert_comp*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct isert_comp *
isert_comp_get(struct isert_conn *isert_conn)
{
 struct isert_device *device = isert_conn->device;
 struct isert_comp *comp;
 int i, min = 0;

 mutex_lock(&device_list_mutex);
 for (i = 0; i < device->comps_used; i++)
  if (device->comps[i].active_qps <
      device->comps[min].active_qps)
   min = i;
 comp = &device->comps[min];
 comp->active_qps++;
 mutex_unlock(&device_list_mutex);

 isert_info("conn %p, using comp %p min_index: %d\n",
     isert_conn, comp, min);

 return comp;
}
