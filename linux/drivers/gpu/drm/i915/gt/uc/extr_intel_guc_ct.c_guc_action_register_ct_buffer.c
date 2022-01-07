
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int dummy; } ;
struct guc_ct_buffer_desc {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int DRM_ERROR (char*,int ,int) ;
 int INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER ;
 int guc_ct_buffer_type_to_str (int) ;
 int intel_guc_send_mmio (struct intel_guc*,int*,int ,int *,int ) ;

__attribute__((used)) static int guc_action_register_ct_buffer(struct intel_guc *guc,
      u32 desc_addr,
      u32 type)
{
 u32 action[] = {
  INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER,
  desc_addr,
  sizeof(struct guc_ct_buffer_desc),
  type
 };
 int err;


 err = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), ((void*)0), 0);
 if (err)
  DRM_ERROR("CT: register %s buffer failed; err=%d\n",
     guc_ct_buffer_type_to_str(type), err);
 return err;
}
