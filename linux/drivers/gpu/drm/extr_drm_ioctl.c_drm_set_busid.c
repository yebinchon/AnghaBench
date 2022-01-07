
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int unique_len; int * unique; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int unique; scalar_t__ dev; } ;


 int GFP_KERNEL ;
 int WARN_ON (int) ;
 scalar_t__ dev_is_pci (scalar_t__) ;
 int drm_pci_set_busid (struct drm_device*,struct drm_master*) ;
 int drm_unset_busid (struct drm_device*,struct drm_master*) ;
 int * kstrdup (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int drm_set_busid(struct drm_device *dev, struct drm_file *file_priv)
{
 struct drm_master *master = file_priv->master;
 int ret;

 if (master->unique != ((void*)0))
  drm_unset_busid(dev, master);

 if (dev->dev && dev_is_pci(dev->dev)) {
  ret = drm_pci_set_busid(dev, master);
  if (ret) {
   drm_unset_busid(dev, master);
   return ret;
  }
 } else {
  WARN_ON(!dev->unique);
  master->unique = kstrdup(dev->unique, GFP_KERNEL);
  if (master->unique)
   master->unique_len = strlen(dev->unique);
 }

 return 0;
}
