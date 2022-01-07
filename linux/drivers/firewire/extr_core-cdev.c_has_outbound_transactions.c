
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int lock; int resource_idr; } ;


 int idr_for_each (int *,int ,int *) ;
 int is_outbound_transaction_resource ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int has_outbound_transactions(struct client *client)
{
 int ret;

 spin_lock_irq(&client->lock);
 ret = idr_for_each(&client->resource_idr,
      is_outbound_transaction_resource, ((void*)0));
 spin_unlock_irq(&client->lock);

 return ret;
}
