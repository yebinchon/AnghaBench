
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_diag_client {struct qib_diag_client* next; scalar_t__ pid; struct qib_devdata* dd; int state; } ;
struct qib_devdata {struct qib_diag_client* diag_client; } ;


 int UNUSED ;
 struct qib_diag_client* client_pool ;

__attribute__((used)) static void return_client(struct qib_diag_client *dc)
{
 struct qib_devdata *dd = dc->dd;
 struct qib_diag_client *tdc, *rdc;

 rdc = ((void*)0);
 if (dc == dd->diag_client) {
  dd->diag_client = dc->next;
  rdc = dc;
 } else {
  tdc = dc->dd->diag_client;
  while (tdc) {
   if (dc == tdc->next) {
    tdc->next = dc->next;
    rdc = dc;
    break;
   }
   tdc = tdc->next;
  }
 }
 if (rdc) {
  rdc->state = UNUSED;
  rdc->dd = ((void*)0);
  rdc->pid = 0;
  rdc->next = client_pool;
  client_pool = rdc;
 }
}
