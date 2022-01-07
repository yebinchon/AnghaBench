
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occ_client {scalar_t__ buffer; } ;
struct inode {int dummy; } ;
struct file {struct occ_client* private_data; } ;


 int free_page (unsigned long) ;
 int kfree (struct occ_client*) ;

__attribute__((used)) static int occ_release(struct inode *inode, struct file *file)
{
 struct occ_client *client = file->private_data;

 free_page((unsigned long)client->buffer);
 kfree(client);

 return 0;
}
