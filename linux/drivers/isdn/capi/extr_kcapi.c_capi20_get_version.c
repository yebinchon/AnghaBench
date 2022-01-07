
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_version {int dummy; } ;
struct capi_ctr {scalar_t__ state; int version; } ;
typedef int capi_version ;


 scalar_t__ CAPI_CTR_RUNNING ;
 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 int capi_controller_lock ;
 struct capi_version driver_version ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int memcpy (struct capi_version*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u16 capi20_get_version(u32 contr, struct capi_version *verp)
{
 struct capi_ctr *ctr;
 u16 ret;

 if (contr == 0) {
  *verp = driver_version;
  return CAPI_NOERROR;
 }

 mutex_lock(&capi_controller_lock);

 ctr = get_capi_ctr_by_nr(contr);
 if (ctr && ctr->state == CAPI_CTR_RUNNING) {
  memcpy(verp, &ctr->version, sizeof(capi_version));
  ret = CAPI_NOERROR;
 } else
  ret = CAPI_REGNOTINSTALLED;

 mutex_unlock(&capi_controller_lock);
 return ret;
}
