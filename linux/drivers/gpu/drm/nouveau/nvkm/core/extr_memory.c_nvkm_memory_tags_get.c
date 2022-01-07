
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_tags {int refcount; TYPE_2__* mn; } ;
struct nvkm_memory {struct nvkm_tags* tags; } ;
struct TYPE_3__ {int mutex; } ;
struct nvkm_fb {TYPE_1__ subdev; int tags; } ;
struct nvkm_device {struct nvkm_fb* fb; } ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ offset; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_tags* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_mm_head (int *,int ,int,scalar_t__,scalar_t__,int,TYPE_2__**) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;

int
nvkm_memory_tags_get(struct nvkm_memory *memory, struct nvkm_device *device,
       u32 nr, void (*clr)(struct nvkm_device *, u32, u32),
       struct nvkm_tags **ptags)
{
 struct nvkm_fb *fb = device->fb;
 struct nvkm_tags *tags;

 mutex_lock(&fb->subdev.mutex);
 if ((tags = memory->tags)) {




  if (tags->mn && tags->mn->length != nr) {
   mutex_unlock(&fb->subdev.mutex);
   return -EINVAL;
  }

  refcount_inc(&tags->refcount);
  mutex_unlock(&fb->subdev.mutex);
  *ptags = tags;
  return 0;
 }

 if (!(tags = kmalloc(sizeof(*tags), GFP_KERNEL))) {
  mutex_unlock(&fb->subdev.mutex);
  return -ENOMEM;
 }

 if (!nvkm_mm_head(&fb->tags, 0, 1, nr, nr, 1, &tags->mn)) {
  if (clr)
   clr(device, tags->mn->offset, tags->mn->length);
 } else {
  tags->mn = ((void*)0);
 }

 refcount_set(&tags->refcount, 1);
 mutex_unlock(&fb->subdev.mutex);
 *ptags = tags;
 return 0;
}
