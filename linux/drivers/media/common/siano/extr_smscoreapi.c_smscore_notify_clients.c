
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_device_t {TYPE_1__ clients; } ;
struct smscore_client_t {int context; int (* onremove_handler ) (int ) ;} ;


 int list_empty (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void smscore_notify_clients(struct smscore_device_t *coredev)
{
 struct smscore_client_t *client;


 while (!list_empty(&coredev->clients)) {
  client = (struct smscore_client_t *) coredev->clients.next;
  client->onremove_handler(client->context);
 }
}
