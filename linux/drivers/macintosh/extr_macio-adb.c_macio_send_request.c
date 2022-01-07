
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adb_request {int nbytes; scalar_t__ complete; struct adb_request* next; scalar_t__ reply_len; scalar_t__ sent; int * data; } ;
struct TYPE_3__ {int r; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int ADB_PACKET ;
 int EINVAL ;
 int TAR ;
 TYPE_2__* adb ;
 struct adb_request* current_req ;
 int in_8 (int *) ;
 struct adb_request* last_req ;
 int macio_adb_poll () ;
 int macio_lock ;
 int out_8 (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int macio_send_request(struct adb_request *req, int sync)
{
 unsigned long flags;
 int i;

 if (req->data[0] != ADB_PACKET)
  return -EINVAL;

 for (i = 0; i < req->nbytes - 1; ++i)
  req->data[i] = req->data[i+1];
 --req->nbytes;

 req->next = ((void*)0);
 req->sent = 0;
 req->complete = 0;
 req->reply_len = 0;

 spin_lock_irqsave(&macio_lock, flags);
 if (current_req != 0) {
  last_req->next = req;
  last_req = req;
 } else {
  current_req = last_req = req;
  out_8(&adb->ctrl.r, in_8(&adb->ctrl.r) | TAR);
 }
 spin_unlock_irqrestore(&macio_lock, flags);

 if (sync) {
  while (!req->complete)
   macio_adb_poll();
 }

 return 0;
}
