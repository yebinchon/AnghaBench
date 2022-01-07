
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct capi_ctr {scalar_t__ state; int serial; } ;


 scalar_t__ CAPI_CTR_RUNNING ;
 int CAPI_NOERROR ;
 int CAPI_REGNOTINSTALLED ;
 int CAPI_SERIAL_LEN ;
 int capi_controller_lock ;
 int driver_serial ;
 struct capi_ctr* get_capi_ctr_by_nr (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int *,int ,int ) ;

u16 capi20_get_serial(u32 contr, u8 *serial)
{
 struct capi_ctr *ctr;
 u16 ret;

 if (contr == 0) {
  strlcpy(serial, driver_serial, CAPI_SERIAL_LEN);
  return CAPI_NOERROR;
 }

 mutex_lock(&capi_controller_lock);

 ctr = get_capi_ctr_by_nr(contr);
 if (ctr && ctr->state == CAPI_CTR_RUNNING) {
  strlcpy(serial, ctr->serial, CAPI_SERIAL_LEN);
  ret = CAPI_NOERROR;
 } else
  ret = CAPI_REGNOTINSTALLED;

 mutex_unlock(&capi_controller_lock);
 return ret;
}
