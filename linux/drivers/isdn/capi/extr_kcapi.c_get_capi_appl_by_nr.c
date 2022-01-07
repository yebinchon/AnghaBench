
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct capi20_appl {int dummy; } ;


 int CAPI_MAXAPPL ;
 int * capi_applications ;
 struct capi20_appl* rcu_dereference (int ) ;

__attribute__((used)) static inline struct capi20_appl *get_capi_appl_by_nr(u16 applid)
{
 if (applid < 1 || applid - 1 >= CAPI_MAXAPPL)
  return ((void*)0);

 return rcu_dereference(capi_applications[applid - 1]);
}
