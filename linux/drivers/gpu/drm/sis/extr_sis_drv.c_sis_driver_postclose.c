
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_file_private {int dummy; } ;
struct drm_file {struct sis_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;


 int kfree (struct sis_file_private*) ;

__attribute__((used)) static void sis_driver_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct sis_file_private *file_priv = file->driver_priv;

 kfree(file_priv);
}
