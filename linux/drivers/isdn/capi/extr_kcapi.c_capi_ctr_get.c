
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {int owner; } ;


 int try_module_get (int ) ;

__attribute__((used)) static inline struct capi_ctr *
capi_ctr_get(struct capi_ctr *ctr)
{
 if (!try_module_get(ctr->owner))
  return ((void*)0);
 return ctr;
}
