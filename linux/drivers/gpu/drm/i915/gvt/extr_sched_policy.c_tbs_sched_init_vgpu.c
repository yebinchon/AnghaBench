
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int weight; } ;
struct vgpu_sched_data {int lru_list; struct intel_vgpu* vgpu; TYPE_1__ sched_ctl; } ;
struct TYPE_4__ {int weight; } ;
struct intel_vgpu {struct vgpu_sched_data* sched_data; TYPE_2__ sched_ctl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct vgpu_sched_data* kzalloc (int,int ) ;

__attribute__((used)) static int tbs_sched_init_vgpu(struct intel_vgpu *vgpu)
{
 struct vgpu_sched_data *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->sched_ctl.weight = vgpu->sched_ctl.weight;
 data->vgpu = vgpu;
 INIT_LIST_HEAD(&data->lru_list);

 vgpu->sched_data = data;

 return 0;
}
