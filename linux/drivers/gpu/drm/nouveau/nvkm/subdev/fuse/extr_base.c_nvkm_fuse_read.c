
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fuse {TYPE_1__* func; } ;
struct TYPE_2__ {int (* read ) (struct nvkm_fuse*,int ) ;} ;


 int stub1 (struct nvkm_fuse*,int ) ;

u32
nvkm_fuse_read(struct nvkm_fuse *fuse, u32 addr)
{
 return fuse->func->read(fuse, addr);
}
