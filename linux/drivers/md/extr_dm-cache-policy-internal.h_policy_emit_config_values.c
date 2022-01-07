
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int (* emit_config_values ) (struct dm_cache_policy*,char*,unsigned int,int *) ;} ;
typedef int ssize_t ;


 int DMEMIT (char*) ;
 int stub1 (struct dm_cache_policy*,char*,unsigned int,int *) ;

__attribute__((used)) static inline int policy_emit_config_values(struct dm_cache_policy *p, char *result,
         unsigned maxlen, ssize_t *sz_ptr)
{
 ssize_t sz = *sz_ptr;
 if (p->emit_config_values)
  return p->emit_config_values(p, result, maxlen, sz_ptr);

 DMEMIT("0 ");
 *sz_ptr = sz;
 return 0;
}
