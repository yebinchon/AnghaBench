
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse_smbus_removal_work {int work; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct psmouse_smbus_removal_work* kzalloc (int,int ) ;
 int psmouse_smbus_remove_i2c_device ;
 int schedule_work (int *) ;

__attribute__((used)) static void psmouse_smbus_schedule_remove(struct i2c_client *client)
{
 struct psmouse_smbus_removal_work *rwork;

 rwork = kzalloc(sizeof(*rwork), GFP_KERNEL);
 if (rwork) {
  INIT_WORK(&rwork->work, psmouse_smbus_remove_i2c_device);
  rwork->client = client;

  schedule_work(&rwork->work);
 }
}
