
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_top_device {int fault; int engine; int runlist; int reset; int intr; int head; scalar_t__ addr; int index; } ;
struct nvkm_top {int device; } ;


 int GFP_KERNEL ;
 int NVKM_SUBDEV_NR ;
 struct nvkm_top_device* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

struct nvkm_top_device *
nvkm_top_device_new(struct nvkm_top *top)
{
 struct nvkm_top_device *info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (info) {
  info->index = NVKM_SUBDEV_NR;
  info->addr = 0;
  info->fault = -1;
  info->engine = -1;
  info->runlist = -1;
  info->reset = -1;
  info->intr = -1;
  list_add_tail(&info->head, &top->device);
 }
 return info;
}
