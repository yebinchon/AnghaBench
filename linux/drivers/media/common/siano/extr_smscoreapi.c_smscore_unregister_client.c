
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_idlist_t {int entry; int context; TYPE_1__ idlist; struct smscore_device_t* coredev; } ;
struct smscore_device_t {int clientslock; } ;
struct smscore_client_t {int entry; int context; TYPE_1__ idlist; struct smscore_device_t* coredev; } ;


 int kfree (struct smscore_idlist_t*) ;
 int list_del (int *) ;
 int list_empty (TYPE_1__*) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void smscore_unregister_client(struct smscore_client_t *client)
{
 struct smscore_device_t *coredev = client->coredev;
 unsigned long flags;

 spin_lock_irqsave(&coredev->clientslock, flags);


 while (!list_empty(&client->idlist)) {
  struct smscore_idlist_t *identry =
   (struct smscore_idlist_t *) client->idlist.next;
  list_del(&identry->entry);
  kfree(identry);
 }

 pr_debug("%p\n", client->context);

 list_del(&client->entry);
 kfree(client);

 spin_unlock_irqrestore(&coredev->clientslock, flags);
}
