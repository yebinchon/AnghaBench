
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csc_cfg {int dummy; } ;
typedef enum csc_type { ____Placeholder_csc_type } csc_type ;


 int CSC_MAX ;
 scalar_t__ WARN_ON (int) ;
 struct csc_cfg* csc_convert ;

struct csc_cfg *mdp_get_default_csc_cfg(enum csc_type type)
{
 if (WARN_ON(type >= CSC_MAX))
  return ((void*)0);

 return &csc_convert[type];
}
