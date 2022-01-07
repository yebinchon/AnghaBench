
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct nouveau_cli {int head; int mutex; scalar_t__ abi16; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev; } ;


 int kfree (struct nouveau_cli*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_abi16_fini (scalar_t__) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 int nouveau_cli_fini (struct nouveau_cli*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static void
nouveau_drm_postclose(struct drm_device *dev, struct drm_file *fpriv)
{
 struct nouveau_cli *cli = nouveau_cli(fpriv);
 struct nouveau_drm *drm = nouveau_drm(dev);

 pm_runtime_get_sync(dev->dev);

 mutex_lock(&cli->mutex);
 if (cli->abi16)
  nouveau_abi16_fini(cli->abi16);
 mutex_unlock(&cli->mutex);

 mutex_lock(&drm->client.mutex);
 list_del(&cli->head);
 mutex_unlock(&drm->client.mutex);

 nouveau_cli_fini(cli);
 kfree(cli);
 pm_runtime_mark_last_busy(dev->dev);
 pm_runtime_put_autosuspend(dev->dev);
}
