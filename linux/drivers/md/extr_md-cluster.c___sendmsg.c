
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct md_cluster_info {int slot_number; TYPE_2__* message_lockres; TYPE_2__* ack_lockres; } ;
struct cluster_msg {int slot; } ;
struct TYPE_4__ {int sb_lvbptr; } ;
struct TYPE_5__ {TYPE_1__ lksb; } ;


 int DLM_LOCK_CR ;
 int DLM_LOCK_CW ;
 int DLM_LOCK_EX ;
 int cpu_to_le32 (int) ;
 int dlm_lock_sync (TYPE_2__*,int ) ;
 int dlm_unlock_sync (TYPE_2__*) ;
 int memcpy (int ,void*,int) ;
 int pr_err (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __sendmsg(struct md_cluster_info *cinfo, struct cluster_msg *cmsg)
{
 int error;
 int slot = cinfo->slot_number - 1;

 cmsg->slot = cpu_to_le32(slot);

 error = dlm_lock_sync(cinfo->message_lockres, DLM_LOCK_EX);
 if (error) {
  pr_err("md-cluster: failed to get EX on MESSAGE (%d)\n", error);
  goto failed_message;
 }

 memcpy(cinfo->message_lockres->lksb.sb_lvbptr, (void *)cmsg,
   sizeof(struct cluster_msg));

 error = dlm_lock_sync(cinfo->message_lockres, DLM_LOCK_CW);
 if (error) {
  pr_err("md-cluster: failed to convert EX to CW on MESSAGE(%d)\n",
    error);
  goto failed_ack;
 }


 error = dlm_lock_sync(cinfo->ack_lockres, DLM_LOCK_EX);
 if (error) {
  pr_err("md-cluster: failed to convert CR to EX on ACK(%d)\n",
    error);
  goto failed_ack;
 }


 error = dlm_lock_sync(cinfo->ack_lockres, DLM_LOCK_CR);
 if (error) {
  pr_err("md-cluster: failed to convert EX to CR on ACK(%d)\n",
    error);
  goto failed_ack;
 }

failed_ack:
 error = dlm_unlock_sync(cinfo->message_lockres);
 if (unlikely(error != 0)) {
  pr_err("md-cluster: failed convert to NL on MESSAGE(%d)\n",
   error);

  goto failed_ack;
 }
failed_message:
 return error;
}
