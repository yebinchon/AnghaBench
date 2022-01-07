
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgpu_sched_data {int active; int lru_list; } ;
struct intel_vgpu {struct vgpu_sched_data* sched_data; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void tbs_sched_stop_schedule(struct intel_vgpu *vgpu)
{
 struct vgpu_sched_data *vgpu_data = vgpu->sched_data;

 list_del_init(&vgpu_data->lru_list);
 vgpu_data->active = 0;
}
