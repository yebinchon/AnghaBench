
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_workload {struct intel_vgpu* vgpu; int status; int shadow_ctx_active; int shadow_ctx_status_wq; int shadow_bb; int list; } ;
struct intel_vgpu_submission {int workloads; } ;
struct intel_vgpu {struct intel_vgpu_submission submission; } ;


 int EINPROGRESS ;
 int ENOMEM ;
 struct intel_vgpu_workload* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct intel_vgpu_workload* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct intel_vgpu_workload *
alloc_workload(struct intel_vgpu *vgpu)
{
 struct intel_vgpu_submission *s = &vgpu->submission;
 struct intel_vgpu_workload *workload;

 workload = kmem_cache_zalloc(s->workloads, GFP_KERNEL);
 if (!workload)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&workload->list);
 INIT_LIST_HEAD(&workload->shadow_bb);

 init_waitqueue_head(&workload->shadow_ctx_status_wq);
 atomic_set(&workload->shadow_ctx_active, 0);

 workload->status = -EINPROGRESS;
 workload->vgpu = vgpu;

 return workload;
}
