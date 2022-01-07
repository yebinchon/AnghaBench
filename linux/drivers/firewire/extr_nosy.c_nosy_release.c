
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilynx {int client_list_lock; } ;
struct inode {int dummy; } ;
struct file {struct client* private_data; } ;
struct client {int buffer; int link; struct pcilynx* lynx; } ;


 int kfree (struct client*) ;
 int list_del_init (int *) ;
 int lynx_put (struct pcilynx*) ;
 int packet_buffer_destroy (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
nosy_release(struct inode *inode, struct file *file)
{
 struct client *client = file->private_data;
 struct pcilynx *lynx = client->lynx;

 spin_lock_irq(&lynx->client_list_lock);
 list_del_init(&client->link);
 spin_unlock_irq(&lynx->client_list_lock);

 packet_buffer_destroy(&client->buffer);
 kfree(client);
 lynx_put(lynx);

 return 0;
}
