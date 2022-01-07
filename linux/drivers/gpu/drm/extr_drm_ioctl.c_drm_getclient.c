
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int authenticated; } ;
struct drm_device {int dummy; } ;
struct drm_client {scalar_t__ idx; scalar_t__ iocs; scalar_t__ magic; int uid; int pid; int auth; } ;


 int EINVAL ;
 int current ;
 int overflowuid ;
 int task_pid_vnr (int ) ;

int drm_getclient(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_client *client = data;
 if (client->idx == 0) {
  client->auth = file_priv->authenticated;
  client->pid = task_pid_vnr(current);
  client->uid = overflowuid;
  client->magic = 0;
  client->iocs = 0;

  return 0;
 } else {
  return -EINVAL;
 }
}
