
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_fcu_priv {int rpm_shift; } ;
struct TYPE_2__ {int name; } ;
struct wf_fcu_fan {int min; int max; TYPE_1__ ctrl; struct wf_fcu_priv* fcu_priv; } ;
struct mpu_data {scalar_t__ rmaxn_intake_fan; scalar_t__ rminn_intake_fan; scalar_t__ rmaxn_exhaust_fan; scalar_t__ rminn_exhaust_fan; } ;
typedef int s32 ;


 int DBG (char*,int ,int,int) ;
 void* max (int,int ) ;
 void* min (int,int ) ;
 int strcmp (int ,char*) ;
 int strncmp (int ,char*,int) ;
 struct mpu_data* wf_get_mpu (int) ;

__attribute__((used)) static void wf_fcu_get_rpmfan_minmax(struct wf_fcu_fan *fan)
{
 struct wf_fcu_priv *pv = fan->fcu_priv;
 const struct mpu_data *mpu0 = wf_get_mpu(0);
 const struct mpu_data *mpu1 = wf_get_mpu(1);


 fan->min = 2400 >> pv->rpm_shift;
 fan->max = 56000 >> pv->rpm_shift;


 if (mpu0 && !strcmp(fan->ctrl.name, "cpu-front-fan-0")) {
  fan->min = max(fan->min, (s32)mpu0->rminn_intake_fan);
  fan->max = min(fan->max, (s32)mpu0->rmaxn_intake_fan);
  goto bail;
 }
 if (mpu1 && !strcmp(fan->ctrl.name, "cpu-front-fan-1")) {
  fan->min = max(fan->min, (s32)mpu1->rminn_intake_fan);
  fan->max = min(fan->max, (s32)mpu1->rmaxn_intake_fan);
  goto bail;
 }
 if (mpu0 && !strcmp(fan->ctrl.name, "cpu-rear-fan-0")) {
  fan->min = max(fan->min, (s32)mpu0->rminn_exhaust_fan);
  fan->max = min(fan->max, (s32)mpu0->rmaxn_exhaust_fan);
  goto bail;
 }
 if (mpu1 && !strcmp(fan->ctrl.name, "cpu-rear-fan-1")) {
  fan->min = max(fan->min, (s32)mpu1->rminn_exhaust_fan);
  fan->max = min(fan->max, (s32)mpu1->rmaxn_exhaust_fan);
  goto bail;
 }

 if (!strncmp(fan->ctrl.name, "cpu-fan", 7)) {
  fan->min = max(fan->min, (s32)mpu0->rminn_intake_fan);
  fan->max = min(fan->max, (s32)mpu0->rmaxn_intake_fan);
  goto bail;
 }
 bail:
 DBG("wf_fcu: fan min/max for %s set to: [%d..%d] RPM\n",
     fan->ctrl.name, fan->min, fan->max);
}
