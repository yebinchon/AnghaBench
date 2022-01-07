
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_file {int lock; int contexts; } ;
struct drm_file {struct tegra_drm_file* driver_priv; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int idr_init (int *) ;
 struct tegra_drm_file* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int tegra_drm_open(struct drm_device *drm, struct drm_file *filp)
{
 struct tegra_drm_file *fpriv;

 fpriv = kzalloc(sizeof(*fpriv), GFP_KERNEL);
 if (!fpriv)
  return -ENOMEM;

 idr_init(&fpriv->contexts);
 mutex_init(&fpriv->lock);
 filp->driver_priv = fpriv;

 return 0;
}
