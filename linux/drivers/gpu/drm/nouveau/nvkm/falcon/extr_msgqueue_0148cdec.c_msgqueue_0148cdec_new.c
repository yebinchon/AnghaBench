
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_secboot {int dummy; } ;
struct nvkm_msgqueue {int dummy; } ;
struct nvkm_falcon {int dummy; } ;
struct msgqueue_0148cdec {struct nvkm_msgqueue base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct msgqueue_0148cdec* kzalloc (int,int ) ;
 int msgqueue_0148cdec_func ;
 int nvkm_msgqueue_ctor (int *,struct nvkm_falcon*,struct nvkm_msgqueue*) ;

int
msgqueue_0148cdec_new(struct nvkm_falcon *falcon, const struct nvkm_secboot *sb,
        struct nvkm_msgqueue **queue)
{
 struct msgqueue_0148cdec *ret;

 ret = kzalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return -ENOMEM;

 *queue = &ret->base;

 nvkm_msgqueue_ctor(&msgqueue_0148cdec_func, falcon, &ret->base);

 return 0;
}
