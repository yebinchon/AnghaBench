
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvkm_falcon {TYPE_1__* func; int user; int secret; } ;
struct TYPE_2__ {int (* load_imem ) (struct nvkm_falcon*,void*,int ,int ,int ,int ,int) ;} ;


 int nvkm_warn (int ,char*) ;
 int stub1 (struct nvkm_falcon*,void*,int ,int ,int ,int ,int) ;

void
nvkm_falcon_load_imem(struct nvkm_falcon *falcon, void *data, u32 start,
        u32 size, u16 tag, u8 port, bool secure)
{
 if (secure && !falcon->secret) {
  nvkm_warn(falcon->user,
     "writing with secure tag on a non-secure falcon!\n");
  return;
 }

 falcon->func->load_imem(falcon, data, start, size, tag, port,
    secure);
}
