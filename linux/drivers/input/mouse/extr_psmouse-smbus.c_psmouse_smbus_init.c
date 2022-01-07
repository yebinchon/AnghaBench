
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_board_info {struct psmouse_smbus_dev* platform_data; } ;
struct psmouse_smbus_dev {int need_deactivate; int node; struct i2c_board_info board; scalar_t__ client; struct psmouse* psmouse; } ;
struct psmouse {scalar_t__ resync_time; int disconnect; void* fast_reconnect; void* reconnect; int protocol_handler; struct psmouse_smbus_dev* private; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int i2c_for_each_dev (struct psmouse_smbus_dev*,int ) ;
 int kfree (struct psmouse_smbus_dev*) ;
 struct psmouse_smbus_dev* kmemdup (void const*,size_t,int ) ;
 struct psmouse_smbus_dev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psmouse_deactivate (struct psmouse*) ;
 int psmouse_smbus_create_companion ;
 int psmouse_smbus_disconnect ;
 int psmouse_smbus_list ;
 int psmouse_smbus_mutex ;
 int psmouse_smbus_process_byte ;
 void* psmouse_smbus_reconnect ;

int psmouse_smbus_init(struct psmouse *psmouse,
         const struct i2c_board_info *board,
         const void *pdata, size_t pdata_size,
         bool need_deactivate,
         bool leave_breadcrumbs)
{
 struct psmouse_smbus_dev *smbdev;
 int error;

 smbdev = kzalloc(sizeof(*smbdev), GFP_KERNEL);
 if (!smbdev)
  return -ENOMEM;

 smbdev->psmouse = psmouse;
 smbdev->board = *board;
 smbdev->need_deactivate = need_deactivate;

 if (pdata) {
  smbdev->board.platform_data = kmemdup(pdata, pdata_size,
            GFP_KERNEL);
  if (!smbdev->board.platform_data) {
   kfree(smbdev);
   return -ENOMEM;
  }
 }

 if (need_deactivate)
  psmouse_deactivate(psmouse);

 psmouse->private = smbdev;
 psmouse->protocol_handler = psmouse_smbus_process_byte;
 psmouse->reconnect = psmouse_smbus_reconnect;
 psmouse->fast_reconnect = psmouse_smbus_reconnect;
 psmouse->disconnect = psmouse_smbus_disconnect;
 psmouse->resync_time = 0;

 mutex_lock(&psmouse_smbus_mutex);
 list_add_tail(&smbdev->node, &psmouse_smbus_list);
 mutex_unlock(&psmouse_smbus_mutex);


 error = i2c_for_each_dev(smbdev, psmouse_smbus_create_companion);

 if (smbdev->client) {

  return 0;
 }





 kfree(smbdev->board.platform_data);
 smbdev->board.platform_data = ((void*)0);

 if (error < 0 || !leave_breadcrumbs) {
  mutex_lock(&psmouse_smbus_mutex);
  list_del(&smbdev->node);
  mutex_unlock(&psmouse_smbus_mutex);

  kfree(smbdev);
 }

 return error < 0 ? error : -EAGAIN;
}
