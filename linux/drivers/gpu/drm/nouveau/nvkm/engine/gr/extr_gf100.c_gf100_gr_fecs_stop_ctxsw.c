
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gr {int dummy; } ;
struct TYPE_2__ {int mutex; int disable; } ;
struct gf100_gr {TYPE_1__ fecs; } ;


 scalar_t__ WARN_ON (int) ;
 struct gf100_gr* gf100_gr (struct nvkm_gr*) ;
 int gf100_gr_fecs_ctrl_ctxsw (struct gf100_gr*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
gf100_gr_fecs_stop_ctxsw(struct nvkm_gr *base)
{
 struct gf100_gr *gr = gf100_gr(base);
 int ret = 0;

 mutex_lock(&gr->fecs.mutex);
 if (!gr->fecs.disable++) {
  if (WARN_ON(ret = gf100_gr_fecs_ctrl_ctxsw(gr, 0x38)))
   gr->fecs.disable--;
 }
 mutex_unlock(&gr->fecs.mutex);
 return ret;
}
