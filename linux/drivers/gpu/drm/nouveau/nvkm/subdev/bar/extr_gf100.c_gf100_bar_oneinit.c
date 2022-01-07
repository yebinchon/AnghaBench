
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_bar {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_5__ {int oneinit; int device; } ;
struct TYPE_8__ {TYPE_1__ subdev; TYPE_3__* func; } ;
struct gf100_bar {int * bar; TYPE_4__ base; } ;
struct TYPE_6__ {scalar_t__ init; } ;
struct TYPE_7__ {TYPE_2__ bar2; } ;


 struct gf100_bar* gf100_bar (struct nvkm_bar*) ;
 int gf100_bar_oneinit_bar (struct gf100_bar*,int *,struct lock_class_key*,int) ;
 int nvkm_bar_bar2_init (int ) ;

int
gf100_bar_oneinit(struct nvkm_bar *base)
{
 static struct lock_class_key bar1_lock;
 static struct lock_class_key bar2_lock;
 struct gf100_bar *bar = gf100_bar(base);
 int ret;


 if (bar->base.func->bar2.init) {
  ret = gf100_bar_oneinit_bar(bar, &bar->bar[0], &bar2_lock, 3);
  if (ret)
   return ret;

  bar->base.subdev.oneinit = 1;
  nvkm_bar_bar2_init(bar->base.subdev.device);
 }


 ret = gf100_bar_oneinit_bar(bar, &bar->bar[1], &bar1_lock, 1);
 if (ret)
  return ret;

 return 0;
}
