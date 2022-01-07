
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_diag_client {int state; int pid; struct qib_devdata* dd; struct qib_diag_client* next; } ;
struct qib_devdata {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int GFP_KERNEL ;
 int OPENED ;
 struct qib_diag_client* client_pool ;
 TYPE_1__* current ;
 struct qib_diag_client* kmalloc (int,int ) ;

__attribute__((used)) static struct qib_diag_client *get_client(struct qib_devdata *dd)
{
 struct qib_diag_client *dc;

 dc = client_pool;
 if (dc)

  client_pool = dc->next;
 else

  dc = kmalloc(sizeof(*dc), GFP_KERNEL);

 if (dc) {
  dc->next = ((void*)0);
  dc->dd = dd;
  dc->pid = current->pid;
  dc->state = OPENED;
 }
 return dc;
}
