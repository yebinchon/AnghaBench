
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ CAPI_CTR_RUNNING ;
 int CAPI_MAXCONTR ;
 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 TYPE_1__** capi_controller ;
 int capi_controller_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u16 capi20_isinstalled(void)
{
 u16 ret = CAPI_REGNOTINSTALLED;
 int i;

 mutex_lock(&capi_controller_lock);

 for (i = 0; i < CAPI_MAXCONTR; i++)
  if (capi_controller[i] &&
      capi_controller[i]->state == CAPI_CTR_RUNNING) {
   ret = CAPI_NOERROR;
   break;
  }

 mutex_unlock(&capi_controller_lock);

 return ret;
}
