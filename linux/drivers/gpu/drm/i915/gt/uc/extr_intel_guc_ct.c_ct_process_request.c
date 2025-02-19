
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc_ct {int dummy; } ;
struct intel_guc {int dummy; } ;


 int CT_DEBUG_DRIVER (char*,int,int,int const*) ;
 int DRM_ERROR (char*,int,int,int const*) ;

 struct intel_guc* ct_to_guc (struct intel_guc_ct*) ;
 int intel_guc_to_host_process_recv_msg (struct intel_guc*,int const*,int) ;
 int unlikely (int) ;

__attribute__((used)) static void ct_process_request(struct intel_guc_ct *ct,
          u32 action, u32 len, const u32 *payload)
{
 struct intel_guc *guc = ct_to_guc(ct);
 int ret;

 CT_DEBUG_DRIVER("CT: request %x %*ph\n", action, 4 * len, payload);

 switch (action) {
 case 128:
  ret = intel_guc_to_host_process_recv_msg(guc, payload, len);
  if (unlikely(ret))
   goto fail_unexpected;
  break;

 default:
fail_unexpected:
  DRM_ERROR("CT: unexpected request %x %*ph\n",
     action, 4 * len, payload);
  break;
 }
}
