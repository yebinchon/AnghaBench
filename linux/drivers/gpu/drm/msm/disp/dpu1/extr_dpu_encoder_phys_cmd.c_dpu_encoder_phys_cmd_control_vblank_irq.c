
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_encoder_phys {TYPE_1__* hw_pp; int parent; int vblank_refcount; } ;
struct TYPE_2__ {scalar_t__ idx; } ;


 int DPU_ERROR (char*) ;
 int DRMID (int ) ;
 int DRM_DEBUG_KMS (char*,int ,scalar_t__,char*,int) ;
 int DRM_ERROR (char*,int ,scalar_t__,int,char*,int) ;
 int EINVAL ;
 int INTR_IDX_RDPTR ;
 scalar_t__ PINGPONG_0 ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int dpu_encoder_helper_register_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_helper_unregister_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_phys_cmd_is_master (struct dpu_encoder_phys*) ;

__attribute__((used)) static int dpu_encoder_phys_cmd_control_vblank_irq(
  struct dpu_encoder_phys *phys_enc,
  bool enable)
{
 int ret = 0;
 int refcount;

 if (!phys_enc || !phys_enc->hw_pp) {
  DPU_ERROR("invalid encoder\n");
  return -EINVAL;
 }

 refcount = atomic_read(&phys_enc->vblank_refcount);


 if (!dpu_encoder_phys_cmd_is_master(phys_enc))
  goto end;


 if (!enable && refcount == 0) {
  ret = -EINVAL;
  goto end;
 }

 DRM_DEBUG_KMS("id:%u pp:%d enable=%s/%d\n", DRMID(phys_enc->parent),
        phys_enc->hw_pp->idx - PINGPONG_0,
        enable ? "true" : "false", refcount);

 if (enable && atomic_inc_return(&phys_enc->vblank_refcount) == 1)
  ret = dpu_encoder_helper_register_irq(phys_enc, INTR_IDX_RDPTR);
 else if (!enable && atomic_dec_return(&phys_enc->vblank_refcount) == 0)
  ret = dpu_encoder_helper_unregister_irq(phys_enc,
    INTR_IDX_RDPTR);

end:
 if (ret) {
  DRM_ERROR("vblank irq err id:%u pp:%d ret:%d, enable %s/%d\n",
     DRMID(phys_enc->parent),
     phys_enc->hw_pp->idx - PINGPONG_0, ret,
     enable ? "true" : "false", refcount);
 }

 return ret;
}
