
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvif_mclass {int member_1; int oclass; int member_0; } ;
struct TYPE_2__ {int * client; } ;
struct nvif_disp {TYPE_1__ object; } ;
struct nvif_device {int object; } ;
typedef int s32 ;
 int nvif_object_init (int *,int ,int ,int *,int ,TYPE_1__*) ;
 int nvif_sclass (int *,struct nvif_mclass const*,int ) ;

int
nvif_disp_ctor(struct nvif_device *device, s32 oclass, struct nvif_disp *disp)
{
 static const struct nvif_mclass disps[] = {
  { 128, -1 },
  { 131, -1 },
  { 135, -1 },
  { 136, -1 },
  { 137, -1 },
  { 138, -1 },
  { 139, -1 },
  { 140, -1 },
  { 141, -1 },
  { 132, -1 },
  { 133, -1 },
  { 134, -1 },
  { 142, -1 },
  { 129, -1 },
  { 130, -1 },
  {}
 };
 int cid = nvif_sclass(&device->object, disps, oclass);
 disp->object.client = ((void*)0);
 if (cid < 0)
  return cid;

 return nvif_object_init(&device->object, 0, disps[cid].oclass,
    ((void*)0), 0, &disp->object);
}
