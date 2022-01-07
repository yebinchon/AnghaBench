
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_ct_channel {int enabled; int owner; } ;
struct intel_guc {int dummy; } ;


 int GEM_BUG_ON (int) ;
 int INTEL_GUC_CT_BUFFER_TYPE_RECV ;
 int INTEL_GUC_CT_BUFFER_TYPE_SEND ;
 int guc_action_deregister_ct_buffer (struct intel_guc*,int ,int ) ;

__attribute__((used)) static void ctch_disable(struct intel_guc *guc,
    struct intel_guc_ct_channel *ctch)
{
 GEM_BUG_ON(!ctch->enabled);

 ctch->enabled = 0;

 guc_action_deregister_ct_buffer(guc,
     ctch->owner,
     INTEL_GUC_CT_BUFFER_TYPE_SEND);
 guc_action_deregister_ct_buffer(guc,
     ctch->owner,
     INTEL_GUC_CT_BUFFER_TYPE_RECV);
}
