
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int filelist_mutex; } ;
struct drm_client_dev {TYPE_1__* file; struct drm_device* dev; } ;
struct TYPE_2__ {int lhead; } ;


 int drm_file_free (TYPE_1__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drm_client_close(struct drm_client_dev *client)
{
 struct drm_device *dev = client->dev;

 mutex_lock(&dev->filelist_mutex);
 list_del(&client->file->lhead);
 mutex_unlock(&dev->filelist_mutex);

 drm_file_free(client->file);
}
