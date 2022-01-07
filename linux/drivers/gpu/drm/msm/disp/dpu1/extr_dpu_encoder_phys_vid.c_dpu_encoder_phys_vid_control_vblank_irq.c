
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_encoder_phys {TYPE_1__* hw_intf; int parent; int vblank_refcount; } ;
struct TYPE_2__ {scalar_t__ idx; } ;


 int DPU_ERROR (char*) ;
 int DRMID (int ) ;
 int DRM_DEBUG_KMS (char*,int ,int,int) ;
 int DRM_ERROR (char*,int ,scalar_t__,int,int,int) ;
 int EINVAL ;
 scalar_t__ INTF_0 ;
 int INTR_IDX_VSYNC ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int dpu_encoder_helper_register_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_helper_unregister_irq (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_phys_vid_is_master (struct dpu_encoder_phys*) ;

__attribute__((used)) static int dpu_encoder_phys_vid_control_vblank_irq(
  struct dpu_encoder_phys *phys_enc,
  bool enable)
{
 int ret = 0;
 int refcount;

 if (!phys_enc) {
  DPU_ERROR("invalid encoder\n");
  return -EINVAL;
 }

 refcount = atomic_read(&phys_enc->vblank_refcount);


 if (!dpu_encoder_phys_vid_is_master(phys_enc))
  goto end;


 if (!enable && refcount == 0) {
  ret = -EINVAL;
  goto end;
 }

 DRM_DEBUG_KMS("id:%u enable=%d/%d\n", DRMID(phys_enc->parent), enable,
        atomic_read(&phys_enc->vblank_refcount));

 if (enable && atomic_inc_return(&phys_enc->vblank_refcount) == 1)
  ret = dpu_encoder_helper_register_irq(phys_enc, INTR_IDX_VSYNC);
 else if (!enable && atomic_dec_return(&phys_enc->vblank_refcount) == 0)
  ret = dpu_encoder_helper_unregister_irq(phys_enc,
    INTR_IDX_VSYNC);

end:
 if (ret) {
  DRM_ERROR("failed: id:%u intf:%d ret:%d enable:%d refcnt:%d\n",
     DRMID(phys_enc->parent),
     phys_enc->hw_intf->idx - INTF_0, ret, enable,
     refcount);
 }
 return ret;
}
