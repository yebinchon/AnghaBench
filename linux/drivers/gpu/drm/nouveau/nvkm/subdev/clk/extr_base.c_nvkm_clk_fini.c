
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_clk {TYPE_1__* func; int work; int pwrsrc_ntfy; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_clk*) ;} ;


 int flush_work (int *) ;
 struct nvkm_clk* nvkm_clk (struct nvkm_subdev*) ;
 int nvkm_notify_put (int *) ;
 int stub1 (struct nvkm_clk*) ;

__attribute__((used)) static int
nvkm_clk_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_clk *clk = nvkm_clk(subdev);
 nvkm_notify_put(&clk->pwrsrc_ntfy);
 flush_work(&clk->work);
 if (clk->func->fini)
  clk->func->fini(clk);
 return 0;
}
