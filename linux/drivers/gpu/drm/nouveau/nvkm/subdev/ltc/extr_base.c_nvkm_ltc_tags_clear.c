
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ const u32 ;
struct TYPE_4__ {int mutex; } ;
struct nvkm_ltc {scalar_t__ const num_tags; TYPE_2__ subdev; TYPE_1__* func; } ;
struct nvkm_device {struct nvkm_ltc* ltc; } ;
struct TYPE_3__ {int (* cbc_wait ) (struct nvkm_ltc*) ;int (* cbc_clear ) (struct nvkm_ltc*,scalar_t__ const,scalar_t__ const) ;} ;


 int BUG_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct nvkm_ltc*,scalar_t__ const,scalar_t__ const) ;
 int stub2 (struct nvkm_ltc*) ;

void
nvkm_ltc_tags_clear(struct nvkm_device *device, u32 first, u32 count)
{
 struct nvkm_ltc *ltc = device->ltc;
 const u32 limit = first + count - 1;

 BUG_ON((first > limit) || (limit >= ltc->num_tags));

 mutex_lock(&ltc->subdev.mutex);
 ltc->func->cbc_clear(ltc, first, limit);
 ltc->func->cbc_wait(ltc);
 mutex_unlock(&ltc->subdev.mutex);
}
