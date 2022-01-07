
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_tags {int mn; int refcount; } ;
struct nvkm_memory {int * tags; } ;
struct TYPE_2__ {int mutex; } ;
struct nvkm_fb {TYPE_1__ subdev; int tags; } ;
struct nvkm_device {struct nvkm_fb* fb; } ;


 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_mm_free (int *,int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void
nvkm_memory_tags_put(struct nvkm_memory *memory, struct nvkm_device *device,
       struct nvkm_tags **ptags)
{
 struct nvkm_fb *fb = device->fb;
 struct nvkm_tags *tags = *ptags;
 if (tags) {
  mutex_lock(&fb->subdev.mutex);
  if (refcount_dec_and_test(&tags->refcount)) {
   nvkm_mm_free(&fb->tags, &tags->mn);
   kfree(memory->tags);
   memory->tags = ((void*)0);
  }
  mutex_unlock(&fb->subdev.mutex);
  *ptags = ((void*)0);
 }
}
