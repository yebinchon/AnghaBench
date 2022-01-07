
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_file {int lock; int contexts; } ;
struct drm_file {struct tegra_drm_file* driver_priv; } ;
struct drm_device {int dummy; } ;


 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int kfree (struct tegra_drm_file*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tegra_drm_context_cleanup ;

__attribute__((used)) static void tegra_drm_postclose(struct drm_device *drm, struct drm_file *file)
{
 struct tegra_drm_file *fpriv = file->driver_priv;

 mutex_lock(&fpriv->lock);
 idr_for_each(&fpriv->contexts, tegra_drm_context_cleanup, ((void*)0));
 mutex_unlock(&fpriv->lock);

 idr_destroy(&fpriv->contexts);
 mutex_destroy(&fpriv->lock);
 kfree(fpriv);
}
