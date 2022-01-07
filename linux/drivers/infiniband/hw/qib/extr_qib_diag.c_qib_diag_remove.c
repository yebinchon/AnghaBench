
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_diag_client {struct qib_diag_client* next; } ;
struct qib_devdata {scalar_t__ diag_client; int diag_device; int diag_cdev; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 struct qib_diag_client* client_pool ;
 int diagpkt_cdev ;
 int diagpkt_count ;
 int diagpkt_device ;
 int kfree (struct qib_diag_client*) ;
 int qib_cdev_cleanup (int *,int *) ;
 int qib_unregister_observers (struct qib_devdata*) ;
 int return_client (scalar_t__) ;

void qib_diag_remove(struct qib_devdata *dd)
{
 struct qib_diag_client *dc;

 if (atomic_dec_and_test(&diagpkt_count))
  qib_cdev_cleanup(&diagpkt_cdev, &diagpkt_device);

 qib_cdev_cleanup(&dd->diag_cdev, &dd->diag_device);





 while (dd->diag_client)
  return_client(dd->diag_client);


 while (client_pool) {
  dc = client_pool;
  client_pool = dc->next;
  kfree(dc);
 }

 qib_unregister_observers(dd);
}
