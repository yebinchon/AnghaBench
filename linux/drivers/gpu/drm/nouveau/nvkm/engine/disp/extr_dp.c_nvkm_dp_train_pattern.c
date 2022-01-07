
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {TYPE_3__* ior; } ;
struct nvkm_dp {int aux; TYPE_4__ outp; } ;
struct lt_state {struct nvkm_dp* dp; } ;
struct TYPE_7__ {TYPE_2__* func; } ;
struct TYPE_5__ {int (* pattern ) (TYPE_3__*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ dp; } ;


 int DPCD_LC02 ;
 int DPCD_LC02_TRAINING_PATTERN_SET ;
 int OUTP_TRACE (TYPE_4__*,char*,int ) ;
 int nvkm_rdaux (int ,int ,int *,int) ;
 int nvkm_wraux (int ,int ,int *,int) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static void
nvkm_dp_train_pattern(struct lt_state *lt, u8 pattern)
{
 struct nvkm_dp *dp = lt->dp;
 u8 sink_tp;

 OUTP_TRACE(&dp->outp, "training pattern %d", pattern);
 dp->outp.ior->func->dp.pattern(dp->outp.ior, pattern);

 nvkm_rdaux(dp->aux, DPCD_LC02, &sink_tp, 1);
 sink_tp &= ~DPCD_LC02_TRAINING_PATTERN_SET;
 sink_tp |= pattern;
 nvkm_wraux(dp->aux, DPCD_LC02, &sink_tp, 1);
}
