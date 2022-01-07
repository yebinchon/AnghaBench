
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm_protocol_driver {int dummy; } ;
struct stm_device {int policy_mutex; TYPE_1__* policy; struct config_item_type const* pdrv_node_type; struct stm_protocol_driver const* pdrv; } ;
struct config_item_type {int dummy; } ;
struct config_group {int dummy; } ;
struct TYPE_2__ {struct config_group group; struct stm_device* stm; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct config_group*) ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 char* kasprintf (int ,char*,char const*) ;
 int kfree (char*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stm_device* stm_find_device (char*) ;
 int stm_lookup_protocol (char*,struct stm_protocol_driver const**,struct config_item_type const**) ;
 int stm_put_device (struct stm_device*) ;
 int stm_put_protocol (struct stm_protocol_driver const*) ;
 int stp_policy_type ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct config_group *
stp_policy_make(struct config_group *group, const char *name)
{
 const struct config_item_type *pdrv_node_type;
 const struct stm_protocol_driver *pdrv;
 char *devname, *proto, *p;
 struct config_group *ret;
 struct stm_device *stm;
 int err;

 devname = kasprintf(GFP_KERNEL, "%s", name);
 if (!devname)
  return ERR_PTR(-ENOMEM);
 p = strrchr(devname, '.');
 if (!p) {
  kfree(devname);
  return ERR_PTR(-EINVAL);
 }

 *p = '\0';






 proto = strrchr(devname, ':');
 if (proto)
  *proto++ = '\0';

 stm = stm_find_device(devname);
 if (!stm) {
  kfree(devname);
  return ERR_PTR(-ENODEV);
 }

 err = stm_lookup_protocol(proto, &pdrv, &pdrv_node_type);
 kfree(devname);

 if (err) {
  stm_put_device(stm);
  return ERR_PTR(-ENODEV);
 }

 mutex_lock(&stm->policy_mutex);
 if (stm->policy) {
  ret = ERR_PTR(-EBUSY);
  goto unlock_policy;
 }

 stm->policy = kzalloc(sizeof(*stm->policy), GFP_KERNEL);
 if (!stm->policy) {
  ret = ERR_PTR(-ENOMEM);
  goto unlock_policy;
 }

 config_group_init_type_name(&stm->policy->group, name,
        &stp_policy_type);

 stm->pdrv = pdrv;
 stm->pdrv_node_type = pdrv_node_type;
 stm->policy->stm = stm;
 ret = &stm->policy->group;

unlock_policy:
 mutex_unlock(&stm->policy_mutex);

 if (IS_ERR(ret)) {




  stm_put_protocol(pdrv);
  stm_put_device(stm);
 }

 return ret;
}
