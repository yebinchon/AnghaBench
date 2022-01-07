
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse_smbus_dev {int dead; TYPE_1__* client; int psmouse; int node; } ;
struct psmouse {struct psmouse_smbus_dev* private; } ;
struct TYPE_2__ {int dev; } ;


 int dev_name (int *) ;
 int kfree (struct psmouse_smbus_dev*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psmouse_dbg (int ,char*,int ) ;
 int psmouse_smbus_mutex ;
 int psmouse_smbus_schedule_remove (TYPE_1__*) ;

__attribute__((used)) static void psmouse_smbus_disconnect(struct psmouse *psmouse)
{
 struct psmouse_smbus_dev *smbdev = psmouse->private;

 mutex_lock(&psmouse_smbus_mutex);

 if (smbdev->dead) {
  list_del(&smbdev->node);
  kfree(smbdev);
 } else {
  smbdev->dead = 1;
  psmouse_dbg(smbdev->psmouse,
       "posting removal request for SMBus companion %s\n",
       dev_name(&smbdev->client->dev));
  psmouse_smbus_schedule_remove(smbdev->client);
 }

 mutex_unlock(&psmouse_smbus_mutex);

 psmouse->private = ((void*)0);
}
