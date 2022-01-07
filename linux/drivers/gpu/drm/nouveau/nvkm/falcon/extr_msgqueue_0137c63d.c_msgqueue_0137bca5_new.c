
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_secboot {int dummy; } ;
struct nvkm_msgqueue {int dummy; } ;
struct nvkm_falcon {int dummy; } ;
struct TYPE_2__ {struct nvkm_msgqueue base; } ;
struct msgqueue_0137bca5 {TYPE_1__ base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct msgqueue_0137bca5* kzalloc (int,int ) ;
 int msgqueue_0137bca5_func ;
 int nvkm_msgqueue_ctor (int *,struct nvkm_falcon*,struct nvkm_msgqueue*) ;

int
msgqueue_0137bca5_new(struct nvkm_falcon *falcon, const struct nvkm_secboot *sb,
        struct nvkm_msgqueue **queue)
{
 struct msgqueue_0137bca5 *ret;

 ret = kzalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return -ENOMEM;

 *queue = &ret->base.base;







 nvkm_msgqueue_ctor(&msgqueue_0137bca5_func, falcon, &ret->base.base);

 return 0;
}
