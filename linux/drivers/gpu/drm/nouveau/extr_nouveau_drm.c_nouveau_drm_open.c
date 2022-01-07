
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct nouveau_drm {TYPE_2__ client; int clients; } ;
struct TYPE_3__ {int super; } ;
struct nouveau_cli {int head; TYPE_1__ base; } ;
struct drm_file {struct nouveau_cli* driver_priv; int pid; } ;
struct drm_device {int dev; } ;
typedef int name ;


 int EACCES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TASK_COMM_LEN ;
 int current ;
 int get_task_comm (char*,int ) ;
 int kfree (struct nouveau_cli*) ;
 struct nouveau_cli* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_cli_fini (struct nouveau_cli*) ;
 int nouveau_cli_init (struct nouveau_drm*,char*,struct nouveau_cli*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int pid_nr (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int
nouveau_drm_open(struct drm_device *dev, struct drm_file *fpriv)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_cli *cli;
 char name[32], tmpname[TASK_COMM_LEN];
 int ret;


 ret = pm_runtime_get_sync(dev->dev);
 if (ret < 0 && ret != -EACCES)
  return ret;

 get_task_comm(tmpname, current);
 snprintf(name, sizeof(name), "%s[%d]", tmpname, pid_nr(fpriv->pid));

 if (!(cli = kzalloc(sizeof(*cli), GFP_KERNEL))) {
  ret = -ENOMEM;
  goto done;
 }

 ret = nouveau_cli_init(drm, name, cli);
 if (ret)
  goto done;

 cli->base.super = 0;

 fpriv->driver_priv = cli;

 mutex_lock(&drm->client.mutex);
 list_add(&cli->head, &drm->clients);
 mutex_unlock(&drm->client.mutex);

done:
 if (ret && cli) {
  nouveau_cli_fini(cli);
  kfree(cli);
 }

 pm_runtime_mark_last_busy(dev->dev);
 pm_runtime_put_autosuspend(dev->dev);
 return ret;
}
