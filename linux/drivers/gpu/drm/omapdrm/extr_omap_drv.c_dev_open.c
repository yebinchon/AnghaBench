
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int * driver_priv; } ;
struct drm_device {int dummy; } ;


 int DBG (char*,struct drm_device*,struct drm_file*) ;

__attribute__((used)) static int dev_open(struct drm_device *dev, struct drm_file *file)
{
 file->driver_priv = ((void*)0);

 DBG("open: dev=%p, file=%p", dev, file);

 return 0;
}
