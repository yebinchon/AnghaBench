
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_subdev {int list; struct host1x_client* client; } ;
struct host1x_device {int registered; int clients_lock; int subdevs; int dev; } ;
struct host1x_client {int list; int * parent; } ;


 int device_del (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __host1x_subdev_unregister(struct host1x_device *device,
           struct host1x_subdev *subdev)
{
 struct host1x_client *client = subdev->client;





 if (list_empty(&device->subdevs)) {
  if (device->registered) {
   device->registered = 0;
   device_del(&device->dev);
  }
 }





 mutex_lock(&device->clients_lock);
 subdev->client = ((void*)0);
 client->parent = ((void*)0);
 list_move_tail(&subdev->list, &device->subdevs);
 list_del_init(&client->list);
 mutex_unlock(&device->clients_lock);
}
