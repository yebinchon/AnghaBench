
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int nbytes; scalar_t__* data; int complete; struct adb_request* next; scalar_t__ reply_len; scalar_t__ sent; } ;


 scalar_t__ ADB_PACKET ;
 int EINVAL ;
 int adb_iop_start () ;
 scalar_t__ adb_iop_state ;
 struct adb_request* current_req ;
 scalar_t__ idle ;
 struct adb_request* last_req ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int adb_iop_write(struct adb_request *req)
{
 unsigned long flags;

 if ((req->nbytes < 2) || (req->data[0] != ADB_PACKET)) {
  req->complete = 1;
  return -EINVAL;
 }

 local_irq_save(flags);

 req->next = ((void*)0);
 req->sent = 0;
 req->complete = 0;
 req->reply_len = 0;

 if (current_req != 0) {
  last_req->next = req;
  last_req = req;
 } else {
  current_req = req;
  last_req = req;
 }

 local_irq_restore(flags);

 if (adb_iop_state == idle)
  adb_iop_start();
 return 0;
}
