
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct occ_client {int lock; struct occ* occ; int * buffer; } ;
struct occ {int dummy; } ;
struct miscdevice {int lock; struct occ* occ; int * buffer; } ;
struct inode {int dummy; } ;
struct file {struct occ_client* private_data; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ OCC_CMD_DATA_BYTES ;
 scalar_t__ OCC_RESP_DATA_BYTES ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int kfree (struct occ_client*) ;
 struct occ_client* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct occ* to_occ (struct occ_client*) ;

__attribute__((used)) static int occ_open(struct inode *inode, struct file *file)
{
 struct occ_client *client = kzalloc(sizeof(*client), GFP_KERNEL);
 struct miscdevice *mdev = file->private_data;
 struct occ *occ = to_occ(mdev);

 if (!client)
  return -ENOMEM;

 client->buffer = (u8 *)__get_free_page(GFP_KERNEL);
 if (!client->buffer) {
  kfree(client);
  return -ENOMEM;
 }

 client->occ = occ;
 mutex_init(&client->lock);
 file->private_data = client;


 BUILD_BUG_ON((OCC_CMD_DATA_BYTES + 3) > PAGE_SIZE);
 BUILD_BUG_ON((OCC_RESP_DATA_BYTES + 7) > PAGE_SIZE);

 return 0;
}
