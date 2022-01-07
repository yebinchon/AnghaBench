
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int clientlist_mutex; int clientlist; } ;
struct drm_client_dev {int list; struct drm_device* dev; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_client_register(struct drm_client_dev *client)
{
 struct drm_device *dev = client->dev;

 mutex_lock(&dev->clientlist_mutex);
 list_add(&client->list, &dev->clientlist);
 mutex_unlock(&dev->clientlist_mutex);
}
