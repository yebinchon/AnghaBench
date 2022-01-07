
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_subdev {struct host1x_client* client; int list; } ;
struct host1x_device {int registered; int dev; int subdevs; int subdevs_lock; int clients_lock; int active; int clients; } ;
struct host1x_client {int * parent; int list; } ;


 int dev_err (int *,char*,int) ;
 int device_add (int *) ;
 scalar_t__ list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void host1x_subdev_register(struct host1x_device *device,
       struct host1x_subdev *subdev,
       struct host1x_client *client)
{
 int err;






 mutex_lock(&device->subdevs_lock);
 mutex_lock(&device->clients_lock);
 list_move_tail(&client->list, &device->clients);
 list_move_tail(&subdev->list, &device->active);
 client->parent = &device->dev;
 subdev->client = client;
 mutex_unlock(&device->clients_lock);
 mutex_unlock(&device->subdevs_lock);

 if (list_empty(&device->subdevs)) {
  err = device_add(&device->dev);
  if (err < 0)
   dev_err(&device->dev, "failed to add: %d\n", err);
  else
   device->registered = 1;
 }
}
