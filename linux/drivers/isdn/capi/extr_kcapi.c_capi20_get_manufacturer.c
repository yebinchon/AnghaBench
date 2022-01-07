
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_ctr {scalar_t__ state; int manu; } ;


 scalar_t__ CAPI_CTR_RUNNING ;
 int CAPI_MANUFACTURER_LEN ;
 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 int capi_controller_lock ;
 int capi_manufakturer ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (int *,int ,int ) ;

u16 capi20_get_manufacturer(u32 contr, u8 *buf)
{
 struct capi_ctr *ctr;
 u16 ret;

 if (contr == 0) {
  strncpy(buf, capi_manufakturer, CAPI_MANUFACTURER_LEN);
  return CAPI_NOERROR;
 }

 mutex_lock(&capi_controller_lock);

 ctr = get_capi_ctr_by_nr(contr);
 if (ctr && ctr->state == CAPI_CTR_RUNNING) {
  strncpy(buf, ctr->manu, CAPI_MANUFACTURER_LEN);
  ret = CAPI_NOERROR;
 } else
  ret = CAPI_REGNOTINSTALLED;

 mutex_unlock(&capi_controller_lock);
 return ret;
}
