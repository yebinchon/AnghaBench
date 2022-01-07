
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_outp {int dummy; } ;
struct nvkm_dp {int hpd; } ;


 struct nvkm_dp* nvkm_dp (struct nvkm_outp*) ;
 int nvkm_dp_enable (struct nvkm_dp*,int) ;
 int nvkm_notify_put (int *) ;

__attribute__((used)) static void
nvkm_dp_fini(struct nvkm_outp *outp)
{
 struct nvkm_dp *dp = nvkm_dp(outp);
 nvkm_notify_put(&dp->hpd);
 nvkm_dp_enable(dp, 0);
}
