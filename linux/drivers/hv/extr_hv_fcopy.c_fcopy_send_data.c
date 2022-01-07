
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct work_struct {int dummy; } ;
struct TYPE_4__ {int operation; } ;
struct hv_start_fcopy {int file_size; int copy_flags; scalar_t__ path_name; scalar_t__ file_name; TYPE_1__ hdr; } ;
struct hv_do_fcopy {int dummy; } ;
typedef int __u8 ;
struct TYPE_6__ {int recv_len; int state; TYPE_2__* fcopy_msg; } ;
struct TYPE_5__ {int operation; } ;


 int GFP_KERNEL ;
 int HVUTIL_READY ;
 int HVUTIL_USERSPACE_REQ ;
 int HV_E_FAIL ;

 int UTF16_LITTLE_ENDIAN ;

 int W_MAX_PATH ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int fcopy_respond_to_host (int ) ;
 int fcopy_timeout_work ;
 TYPE_3__ fcopy_transaction ;
 int hvt ;
 int hvutil_transport_send (int ,void*,int,int *) ;
 int kfree (struct hv_start_fcopy*) ;
 struct hv_start_fcopy* kzalloc (int,int ) ;
 int pr_debug (char*,int) ;
 int utf16s_to_utf8s (int *,int ,int ,int *,int ) ;

__attribute__((used)) static void fcopy_send_data(struct work_struct *dummy)
{
 struct hv_start_fcopy *smsg_out = ((void*)0);
 int operation = fcopy_transaction.fcopy_msg->operation;
 struct hv_start_fcopy *smsg_in;
 void *out_src;
 int rc, out_len;
 switch (operation) {
 case 129:
  out_len = sizeof(struct hv_start_fcopy);
  smsg_out = kzalloc(sizeof(*smsg_out), GFP_KERNEL);
  if (!smsg_out)
   return;

  smsg_out->hdr.operation = operation;
  smsg_in = (struct hv_start_fcopy *)fcopy_transaction.fcopy_msg;

  utf16s_to_utf8s((wchar_t *)smsg_in->file_name, W_MAX_PATH,
    UTF16_LITTLE_ENDIAN,
    (__u8 *)&smsg_out->file_name, W_MAX_PATH - 1);

  utf16s_to_utf8s((wchar_t *)smsg_in->path_name, W_MAX_PATH,
    UTF16_LITTLE_ENDIAN,
    (__u8 *)&smsg_out->path_name, W_MAX_PATH - 1);

  smsg_out->copy_flags = smsg_in->copy_flags;
  smsg_out->file_size = smsg_in->file_size;
  out_src = smsg_out;
  break;

 case 128:
  out_src = fcopy_transaction.fcopy_msg;
  out_len = sizeof(struct hv_do_fcopy);
  break;
 default:
  out_src = fcopy_transaction.fcopy_msg;
  out_len = fcopy_transaction.recv_len;
  break;
 }

 fcopy_transaction.state = HVUTIL_USERSPACE_REQ;
 rc = hvutil_transport_send(hvt, out_src, out_len, ((void*)0));
 if (rc) {
  pr_debug("FCP: failed to communicate to the daemon: %d\n", rc);
  if (cancel_delayed_work_sync(&fcopy_timeout_work)) {
   fcopy_respond_to_host(HV_E_FAIL);
   fcopy_transaction.state = HVUTIL_READY;
  }
 }
 kfree(smsg_out);
}
