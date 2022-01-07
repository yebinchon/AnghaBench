
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw_client {int node; struct serio_raw* serio_raw; } ;
struct serio_raw {int kref; int serio; } ;
struct inode {int dummy; } ;
struct file {struct serio_raw_client* private_data; } ;


 int kfree (struct serio_raw_client*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;
 int serio_raw_free ;

__attribute__((used)) static int serio_raw_release(struct inode *inode, struct file *file)
{
 struct serio_raw_client *client = file->private_data;
 struct serio_raw *serio_raw = client->serio_raw;

 serio_pause_rx(serio_raw->serio);
 list_del(&client->node);
 serio_continue_rx(serio_raw->serio);

 kfree(client);

 kref_put(&serio_raw->kref, serio_raw_free);

 return 0;
}
