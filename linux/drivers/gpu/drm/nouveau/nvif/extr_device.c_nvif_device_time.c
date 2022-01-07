
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvif_device {int object; } ;
struct nv_device_time_v0 {int time; } ;
typedef int args ;


 int NV_DEVICE_V0_TIME ;
 int WARN_ON_ONCE (int) ;
 int nvif_object_mthd (int *,int ,struct nv_device_time_v0*,int) ;

u64
nvif_device_time(struct nvif_device *device)
{
 struct nv_device_time_v0 args = {};
 int ret = nvif_object_mthd(&device->object, NV_DEVICE_V0_TIME,
       &args, sizeof(args));
 WARN_ON_ONCE(ret != 0);
 return args.time;
}
