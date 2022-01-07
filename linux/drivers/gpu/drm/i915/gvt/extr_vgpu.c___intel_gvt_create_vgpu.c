
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_creation_params {int resolution; int primary; int weight; int handle; int fence_sz; int high_gm_sz; int low_gm_sz; } ;
struct TYPE_2__ {int weight; } ;
struct intel_vgpu {int id; int object_idr; int page_track_tree; int dmabuf_obj_list_head; int dmabuf_lock; int vgpu_lock; TYPE_1__ sched_ctl; struct intel_gvt* gvt; int handle; } ;
struct intel_gvt {int vgpu_idr; int dev_priv; } ;


 int ENOMEM ;
 struct intel_vgpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GVT_MAX_VGPU ;
 scalar_t__ IDLE_VGPU_IDR ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 scalar_t__ IS_KABYLAKE (int ) ;
 scalar_t__ IS_SKYLAKE (int ) ;
 int PORT_D ;
 int gvt_dbg_core (char*,int ,int ,int ,int ) ;
 int idr_alloc (int *,struct intel_vgpu*,scalar_t__,int ,int ) ;
 int idr_init (int *) ;
 int idr_remove (int *,int) ;
 int intel_gvt_debugfs_add_vgpu (struct intel_vgpu*) ;
 int intel_gvt_hypervisor_attach_vgpu (struct intel_vgpu*) ;
 int intel_gvt_hypervisor_detach_vgpu (struct intel_vgpu*) ;
 int intel_gvt_hypervisor_set_edid (struct intel_vgpu*,int ) ;
 int intel_gvt_hypervisor_set_opregion (struct intel_vgpu*) ;
 int intel_vgpu_alloc_resource (struct intel_vgpu*,struct intel_vgpu_creation_params*) ;
 int intel_vgpu_clean_display (struct intel_vgpu*) ;
 int intel_vgpu_clean_gtt (struct intel_vgpu*) ;
 int intel_vgpu_clean_mmio (struct intel_vgpu*) ;
 int intel_vgpu_clean_opregion (struct intel_vgpu*) ;
 int intel_vgpu_clean_sched_policy (struct intel_vgpu*) ;
 int intel_vgpu_clean_submission (struct intel_vgpu*) ;
 int intel_vgpu_free_resource (struct intel_vgpu*) ;
 int intel_vgpu_init_cfg_space (struct intel_vgpu*,int ) ;
 int intel_vgpu_init_display (struct intel_vgpu*,int ) ;
 int intel_vgpu_init_gtt (struct intel_vgpu*) ;
 int intel_vgpu_init_mmio (struct intel_vgpu*) ;
 int intel_vgpu_init_opregion (struct intel_vgpu*) ;
 int intel_vgpu_init_sched_policy (struct intel_vgpu*) ;
 int intel_vgpu_setup_submission (struct intel_vgpu*) ;
 int mutex_init (int *) ;
 int populate_pvinfo_page (struct intel_vgpu*) ;
 int vfree (struct intel_vgpu*) ;
 struct intel_vgpu* vzalloc (int) ;

__attribute__((used)) static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
  struct intel_vgpu_creation_params *param)
{
 struct intel_vgpu *vgpu;
 int ret;

 gvt_dbg_core("handle %llu low %llu MB high %llu MB fence %llu\n",
   param->handle, param->low_gm_sz, param->high_gm_sz,
   param->fence_sz);

 vgpu = vzalloc(sizeof(*vgpu));
 if (!vgpu)
  return ERR_PTR(-ENOMEM);

 ret = idr_alloc(&gvt->vgpu_idr, vgpu, IDLE_VGPU_IDR + 1, GVT_MAX_VGPU,
  GFP_KERNEL);
 if (ret < 0)
  goto out_free_vgpu;

 vgpu->id = ret;
 vgpu->handle = param->handle;
 vgpu->gvt = gvt;
 vgpu->sched_ctl.weight = param->weight;
 mutex_init(&vgpu->vgpu_lock);
 mutex_init(&vgpu->dmabuf_lock);
 INIT_LIST_HEAD(&vgpu->dmabuf_obj_list_head);
 INIT_RADIX_TREE(&vgpu->page_track_tree, GFP_KERNEL);
 idr_init(&vgpu->object_idr);
 intel_vgpu_init_cfg_space(vgpu, param->primary);

 ret = intel_vgpu_init_mmio(vgpu);
 if (ret)
  goto out_clean_idr;

 ret = intel_vgpu_alloc_resource(vgpu, param);
 if (ret)
  goto out_clean_vgpu_mmio;

 populate_pvinfo_page(vgpu);

 ret = intel_gvt_hypervisor_attach_vgpu(vgpu);
 if (ret)
  goto out_clean_vgpu_resource;

 ret = intel_vgpu_init_gtt(vgpu);
 if (ret)
  goto out_detach_hypervisor_vgpu;

 ret = intel_vgpu_init_opregion(vgpu);
 if (ret)
  goto out_clean_gtt;

 ret = intel_vgpu_init_display(vgpu, param->resolution);
 if (ret)
  goto out_clean_opregion;

 ret = intel_vgpu_setup_submission(vgpu);
 if (ret)
  goto out_clean_display;

 ret = intel_vgpu_init_sched_policy(vgpu);
 if (ret)
  goto out_clean_submission;

 intel_gvt_debugfs_add_vgpu(vgpu);

 ret = intel_gvt_hypervisor_set_opregion(vgpu);
 if (ret)
  goto out_clean_sched_policy;


 if (IS_SKYLAKE(gvt->dev_priv) || IS_KABYLAKE(gvt->dev_priv))
  ret = intel_gvt_hypervisor_set_edid(vgpu, PORT_D);
 if (ret)
  goto out_clean_sched_policy;

 return vgpu;

out_clean_sched_policy:
 intel_vgpu_clean_sched_policy(vgpu);
out_clean_submission:
 intel_vgpu_clean_submission(vgpu);
out_clean_display:
 intel_vgpu_clean_display(vgpu);
out_clean_opregion:
 intel_vgpu_clean_opregion(vgpu);
out_clean_gtt:
 intel_vgpu_clean_gtt(vgpu);
out_detach_hypervisor_vgpu:
 intel_gvt_hypervisor_detach_vgpu(vgpu);
out_clean_vgpu_resource:
 intel_vgpu_free_resource(vgpu);
out_clean_vgpu_mmio:
 intel_vgpu_clean_mmio(vgpu);
out_clean_idr:
 idr_remove(&gvt->vgpu_idr, vgpu->id);
out_free_vgpu:
 vfree(vgpu);
 return ERR_PTR(ret);
}
