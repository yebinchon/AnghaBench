
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_msg {int dummy; } ;
struct adb_request {scalar_t__ reply_expected; } ;


 scalar_t__ adb_iop_state ;
 scalar_t__ awaiting_reply ;
 struct adb_request* current_req ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ sending ;

__attribute__((used)) static void adb_iop_complete(struct iop_msg *msg)
{
 struct adb_request *req;
 unsigned long flags;

 local_irq_save(flags);

 req = current_req;
 if ((adb_iop_state == sending) && req && req->reply_expected) {
  adb_iop_state = awaiting_reply;
 }

 local_irq_restore(flags);
}
