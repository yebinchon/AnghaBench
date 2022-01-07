
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_mxm {struct nvkm_subdev subdev; } ;


 int nvkm_info (struct nvkm_subdev*,char*,int) ;

__attribute__((used)) static bool
mxm_show_unmatched(struct nvkm_mxm *mxm, u8 *data, void *info)
{
 struct nvkm_subdev *subdev = &mxm->subdev;
 u64 desc = *(u64 *)data;
 if ((desc & 0xf0) != 0xf0)
  nvkm_info(subdev, "unmatched output device %016llx\n", desc);
 return 1;
}
