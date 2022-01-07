
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; int nbytes; size_t* data; struct adb_request* next; scalar_t__ sent; } ;


 int EINVAL ;
 int ENXIO ;
 struct adb_request* current_req ;
 scalar_t__ idle ;
 struct adb_request* last_req ;
 int** pmu_data_len ;
 int pmu_lock ;
 int pmu_start () ;
 scalar_t__ pmu_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uninitialized ;

int
pmu_queue_request(struct adb_request *req)
{
 unsigned long flags;
 int nsend;

 if (pmu_state == uninitialized) {
  req->complete = 1;
  return -ENXIO;
 }
 if (req->nbytes <= 0) {
  req->complete = 1;
  return 0;
 }
 nsend = pmu_data_len[req->data[0]][0];
 if (nsend >= 0 && req->nbytes != nsend + 1) {
  req->complete = 1;
  return -EINVAL;
 }

 req->next = ((void*)0);
 req->sent = 0;
 req->complete = 0;

 spin_lock_irqsave(&pmu_lock, flags);
 if (current_req) {
  last_req->next = req;
  last_req = req;
 } else {
  current_req = req;
  last_req = req;
  if (pmu_state == idle)
   pmu_start();
 }
 spin_unlock_irqrestore(&pmu_lock, flags);

 return 0;
}
