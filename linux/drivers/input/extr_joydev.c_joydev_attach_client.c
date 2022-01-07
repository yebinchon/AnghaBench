
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev_client {int node; } ;
struct joydev {int client_lock; int client_list; } ;


 int list_add_tail_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void joydev_attach_client(struct joydev *joydev,
     struct joydev_client *client)
{
 spin_lock(&joydev->client_lock);
 list_add_tail_rcu(&client->node, &joydev->client_list);
 spin_unlock(&joydev->client_lock);
}
