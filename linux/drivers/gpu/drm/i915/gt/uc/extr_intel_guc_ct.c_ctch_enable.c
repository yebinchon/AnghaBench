
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_guc_ct_channel {int enabled; int owner; TYPE_1__* ctbs; int vma; } ;
struct intel_guc {int dummy; } ;
struct TYPE_2__ {int desc; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CTB_RECV ;
 int CTB_SEND ;
 int DRM_ERROR (char*,int ,int) ;
 int GEM_BUG_ON (int) ;
 int INTEL_GUC_CT_BUFFER_TYPE_RECV ;
 int INTEL_GUC_CT_BUFFER_TYPE_SEND ;
 int PAGE_SIZE ;
 int guc_action_deregister_ct_buffer (struct intel_guc*,int ,int ) ;
 int guc_action_register_ct_buffer (struct intel_guc*,scalar_t__,int ) ;
 int guc_ct_buffer_desc_init (int ,scalar_t__,int,int ) ;
 scalar_t__ intel_guc_ggtt_offset (struct intel_guc*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ctch_enable(struct intel_guc *guc,
         struct intel_guc_ct_channel *ctch)
{
 u32 base;
 int err;
 int i;

 GEM_BUG_ON(!ctch->vma);

 GEM_BUG_ON(ctch->enabled);


 base = intel_guc_ggtt_offset(guc, ctch->vma);




 for (i = 0; i < ARRAY_SIZE(ctch->ctbs); i++) {
  GEM_BUG_ON((i != CTB_SEND) && (i != CTB_RECV));
  guc_ct_buffer_desc_init(ctch->ctbs[i].desc,
     base + PAGE_SIZE/4 * i + PAGE_SIZE/2,
     PAGE_SIZE/4,
     ctch->owner);
 }




 err = guc_action_register_ct_buffer(guc,
         base + PAGE_SIZE/4 * CTB_RECV,
         INTEL_GUC_CT_BUFFER_TYPE_RECV);
 if (unlikely(err))
  goto err_out;

 err = guc_action_register_ct_buffer(guc,
         base + PAGE_SIZE/4 * CTB_SEND,
         INTEL_GUC_CT_BUFFER_TYPE_SEND);
 if (unlikely(err))
  goto err_deregister;

 ctch->enabled = 1;

 return 0;

err_deregister:
 guc_action_deregister_ct_buffer(guc,
     ctch->owner,
     INTEL_GUC_CT_BUFFER_TYPE_RECV);
err_out:
 DRM_ERROR("CT: can't open channel %d; err=%d\n", ctch->owner, err);
 return err;
}
