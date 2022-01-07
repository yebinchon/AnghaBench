
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_protocol_driver {scalar_t__ policy_attr; int name; } ;
struct stm_pdrv_entry {struct stm_protocol_driver const* pdrv; int entry; int node_type; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __stm_lookup_protocol (int ) ;
 int get_policy_node_type (scalar_t__) ;
 int kfree (struct stm_pdrv_entry*) ;
 struct stm_pdrv_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stm_pdrv_head ;
 int stm_pdrv_mutex ;

int stm_register_protocol(const struct stm_protocol_driver *pdrv)
{
 struct stm_pdrv_entry *pe = ((void*)0);
 int ret = -ENOMEM;

 mutex_lock(&stm_pdrv_mutex);

 if (__stm_lookup_protocol(pdrv->name)) {
  ret = -EEXIST;
  goto unlock;
 }

 pe = kzalloc(sizeof(*pe), GFP_KERNEL);
 if (!pe)
  goto unlock;

 if (pdrv->policy_attr) {
  pe->node_type = get_policy_node_type(pdrv->policy_attr);
  if (!pe->node_type)
   goto unlock;
 }

 list_add_tail(&pe->entry, &stm_pdrv_head);
 pe->pdrv = pdrv;

 ret = 0;
unlock:
 mutex_unlock(&stm_pdrv_mutex);

 if (ret)
  kfree(pe);

 return ret;
}
