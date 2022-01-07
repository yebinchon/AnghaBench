
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_guc_ct_channel {int enabled; struct intel_guc_ct_buffer* ctbs; } ;
struct intel_guc_ct_buffer {TYPE_1__* desc; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct TYPE_2__ {int is_in_error; } ;


 size_t CTB_RECV ;
 int DRM_ERROR (char*) ;
 int EPROTO ;
 scalar_t__ GEM_WARN_ON (int) ;
 int GUC_CT_MSG_LEN_MASK ;
 int ct_handle_request (struct intel_guc_ct*,int *) ;
 int ct_handle_response (struct intel_guc_ct*,int *) ;
 scalar_t__ ct_header_is_response (int ) ;
 int ctb_read (struct intel_guc_ct_buffer*,int *) ;

__attribute__((used)) static void ct_process_host_channel(struct intel_guc_ct *ct)
{
 struct intel_guc_ct_channel *ctch = &ct->host_channel;
 struct intel_guc_ct_buffer *ctb = &ctch->ctbs[CTB_RECV];
 u32 msg[GUC_CT_MSG_LEN_MASK + 1];
 int err = 0;

 if (!ctch->enabled)
  return;

 do {
  err = ctb_read(ctb, msg);
  if (err)
   break;

  if (ct_header_is_response(msg[0]))
   err = ct_handle_response(ct, msg);
  else
   err = ct_handle_request(ct, msg);
 } while (!err);

 if (GEM_WARN_ON(err == -EPROTO)) {
  DRM_ERROR("CT: corrupted message detected!\n");
  ctb->desc->is_in_error = 1;
 }
}
