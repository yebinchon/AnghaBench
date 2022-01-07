
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct capi_ctr {int dummy; } ;


 int CAPI_MAXCONTR ;
 struct capi_ctr** capi_controller ;

__attribute__((used)) static inline struct capi_ctr *get_capi_ctr_by_nr(u16 contr)
{
 if (contr < 1 || contr - 1 >= CAPI_MAXCONTR)
  return ((void*)0);

 return capi_controller[contr - 1];
}
