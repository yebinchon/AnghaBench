
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_protocol_driver {int dummy; } ;
struct stm_pdrv_entry {struct config_item_type* node_type; struct stm_protocol_driver* pdrv; } ;
struct config_item_type {int dummy; } ;


 int ENOENT ;
 struct stm_pdrv_entry* __stm_lookup_protocol (char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stm_get_protocol (struct stm_protocol_driver*) ;
 int stm_pdrv_mutex ;

int stm_lookup_protocol(const char *name,
   const struct stm_protocol_driver **pdrv,
   const struct config_item_type **node_type)
{
 const struct stm_pdrv_entry *pe;

 mutex_lock(&stm_pdrv_mutex);

 pe = __stm_lookup_protocol(name);
 if (pe && pe->pdrv && stm_get_protocol(pe->pdrv)) {
  *pdrv = pe->pdrv;
  *node_type = pe->node_type;
 }

 mutex_unlock(&stm_pdrv_mutex);

 return pe ? 0 : -ENOENT;
}
