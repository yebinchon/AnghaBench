
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_i2c_aux {int dummy; } ;
struct TYPE_2__ {int done; } ;
struct nvkm_dp {int present; TYPE_1__ lt; int outp; int dpcd; struct nvkm_i2c_aux* aux; } ;


 int DPCD_RC00_DPCD_REV ;
 int OUTP_DBG (int *,char*) ;
 int atomic_set (int *,int ) ;
 int nvkm_i2c_aux_monitor (struct nvkm_i2c_aux*,int) ;
 int nvkm_rdaux (struct nvkm_i2c_aux*,int ,int ,int) ;

__attribute__((used)) static bool
nvkm_dp_enable(struct nvkm_dp *dp, bool enable)
{
 struct nvkm_i2c_aux *aux = dp->aux;

 if (enable) {
  if (!dp->present) {
   OUTP_DBG(&dp->outp, "aux power -> always");
   nvkm_i2c_aux_monitor(aux, 1);
   dp->present = 1;
  }

  if (!nvkm_rdaux(aux, DPCD_RC00_DPCD_REV, dp->dpcd,
    sizeof(dp->dpcd)))
   return 1;
 }

 if (dp->present) {
  OUTP_DBG(&dp->outp, "aux power -> demand");
  nvkm_i2c_aux_monitor(aux, 0);
  dp->present = 0;
 }

 atomic_set(&dp->lt.done, 0);
 return 0;
}
