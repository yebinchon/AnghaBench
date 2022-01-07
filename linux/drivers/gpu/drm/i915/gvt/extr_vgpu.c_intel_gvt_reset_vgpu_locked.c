
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int failsafe; int pv_notified; int id; scalar_t__ resetting_eng; int vgpu_lock; struct intel_gvt* gvt; } ;
struct intel_gvt_workload_scheduler {int * current_vgpu; } ;
struct intel_gvt {struct intel_gvt_workload_scheduler scheduler; } ;
typedef scalar_t__ intel_engine_mask_t ;


 scalar_t__ ALL_ENGINES ;
 int gvt_dbg_core (char*,...) ;
 int intel_gvt_wait_vgpu_idle (struct intel_vgpu*) ;
 int intel_vgpu_invalidate_ppgtt (struct intel_vgpu*) ;
 int intel_vgpu_reset_cfg_space (struct intel_vgpu*) ;
 int intel_vgpu_reset_display (struct intel_vgpu*) ;
 int intel_vgpu_reset_gtt (struct intel_vgpu*) ;
 int intel_vgpu_reset_mmio (struct intel_vgpu*,int) ;
 int intel_vgpu_reset_resource (struct intel_vgpu*) ;
 int intel_vgpu_reset_submission (struct intel_vgpu*,scalar_t__) ;
 int intel_vgpu_select_submission_ops (struct intel_vgpu*,scalar_t__,int ) ;
 int intel_vgpu_stop_schedule (struct intel_vgpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int populate_pvinfo_page (struct intel_vgpu*) ;

void intel_gvt_reset_vgpu_locked(struct intel_vgpu *vgpu, bool dmlr,
     intel_engine_mask_t engine_mask)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
 intel_engine_mask_t resetting_eng = dmlr ? ALL_ENGINES : engine_mask;

 gvt_dbg_core("------------------------------------------\n");
 gvt_dbg_core("resseting vgpu%d, dmlr %d, engine_mask %08x\n",
       vgpu->id, dmlr, engine_mask);

 vgpu->resetting_eng = resetting_eng;

 intel_vgpu_stop_schedule(vgpu);




 if (scheduler->current_vgpu == ((void*)0)) {
  mutex_unlock(&vgpu->vgpu_lock);
  intel_gvt_wait_vgpu_idle(vgpu);
  mutex_lock(&vgpu->vgpu_lock);
 }

 intel_vgpu_reset_submission(vgpu, resetting_eng);

 if (engine_mask == ALL_ENGINES || dmlr) {
  intel_vgpu_select_submission_ops(vgpu, ALL_ENGINES, 0);
  intel_vgpu_invalidate_ppgtt(vgpu);

  if (dmlr) {
   intel_vgpu_reset_gtt(vgpu);
   intel_vgpu_reset_resource(vgpu);
  }

  intel_vgpu_reset_mmio(vgpu, dmlr);
  populate_pvinfo_page(vgpu);
  intel_vgpu_reset_display(vgpu);

  if (dmlr) {
   intel_vgpu_reset_cfg_space(vgpu);

   vgpu->failsafe = 0;
   vgpu->pv_notified = 0;
  }
 }

 vgpu->resetting_eng = 0;
 gvt_dbg_core("reset vgpu%d done\n", vgpu->id);
 gvt_dbg_core("------------------------------------------\n");
}
