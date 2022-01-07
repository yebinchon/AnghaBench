
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso_resource {int client; int work; } ;


 int client_get (int ) ;
 int client_put (int ) ;
 int fw_workqueue ;
 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void schedule_iso_resource(struct iso_resource *r, unsigned long delay)
{
 client_get(r->client);
 if (!queue_delayed_work(fw_workqueue, &r->work, delay))
  client_put(r->client);
}
