
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct iop_msg {int* reply; scalar_t__* message; } ;
struct adb_request {int reply_len; int* reply; } ;
struct adb_iopmsg {int count; int flags; scalar_t__ cmd; scalar_t__* data; } ;


 int ADB_IOP_AUTOPOLL ;
 int ADB_IOP_EXPLICIT ;
 int ADB_IOP_TIMEOUT ;
 int IOP_MSG_LEN ;
 int adb_input (scalar_t__*,int,int) ;
 int adb_iop_end_req (struct adb_request*,scalar_t__) ;
 scalar_t__ adb_iop_state ;
 scalar_t__ awaiting_reply ;
 struct adb_request* current_req ;
 scalar_t__ idle ;
 int iop_complete_message (struct iop_msg*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (int*,scalar_t__*,int) ;
 int printk (char*,...) ;

__attribute__((used)) static void adb_iop_listen(struct iop_msg *msg)
{
 struct adb_iopmsg *amsg = (struct adb_iopmsg *)msg->message;
 struct adb_request *req;
 unsigned long flags;




 local_irq_save(flags);

 req = current_req;
 if (amsg->flags & ADB_IOP_TIMEOUT) {
  msg->reply[0] = ADB_IOP_TIMEOUT | ADB_IOP_AUTOPOLL;
  msg->reply[1] = 0;
  msg->reply[2] = 0;
  if (req && (adb_iop_state != idle)) {
   adb_iop_end_req(req, idle);
  }
 } else {



  if ((adb_iop_state == awaiting_reply) &&
      (amsg->flags & ADB_IOP_EXPLICIT)) {
   req->reply_len = amsg->count + 1;
   memcpy(req->reply, &amsg->cmd, req->reply_len);
  } else {
   adb_input(&amsg->cmd, amsg->count + 1,
      amsg->flags & ADB_IOP_AUTOPOLL);
  }
  memcpy(msg->reply, msg->message, IOP_MSG_LEN);
 }
 iop_complete_message(msg);
 local_irq_restore(flags);
}
