
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int lhead; } ;
struct drm_device {int filelist_mutex; int filelist_internal; int primary; } ;
struct drm_client_dev {struct drm_file* file; struct drm_device* dev; } ;


 scalar_t__ IS_ERR (struct drm_file*) ;
 int PTR_ERR (struct drm_file*) ;
 struct drm_file* drm_file_alloc (int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int drm_client_open(struct drm_client_dev *client)
{
 struct drm_device *dev = client->dev;
 struct drm_file *file;

 file = drm_file_alloc(dev->primary);
 if (IS_ERR(file))
  return PTR_ERR(file);

 mutex_lock(&dev->filelist_mutex);
 list_add(&file->lhead, &dev->filelist_internal);
 mutex_unlock(&dev->filelist_mutex);

 client->file = file;

 return 0;
}
