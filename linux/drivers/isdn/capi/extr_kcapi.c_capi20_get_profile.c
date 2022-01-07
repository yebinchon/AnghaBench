
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_profile {int ncontroller; } ;
struct capi_ctr {scalar_t__ state; int profile; } ;


 scalar_t__ CAPI_CTR_RUNNING ;
 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 int capi_controller_lock ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int memcpy (struct capi_profile*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ncontrollers ;

u16 capi20_get_profile(u32 contr, struct capi_profile *profp)
{
 struct capi_ctr *ctr;
 u16 ret;

 if (contr == 0) {
  profp->ncontroller = ncontrollers;
  return CAPI_NOERROR;
 }

 mutex_lock(&capi_controller_lock);

 ctr = get_capi_ctr_by_nr(contr);
 if (ctr && ctr->state == CAPI_CTR_RUNNING) {
  memcpy(profp, &ctr->profile, sizeof(struct capi_profile));
  ret = CAPI_NOERROR;
 } else
  ret = CAPI_REGNOTINSTALLED;

 mutex_unlock(&capi_controller_lock);
 return ret;
}
