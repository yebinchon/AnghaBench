
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct shadow {TYPE_1__* func; void* data; } ;
struct nvkm_bios {int size; } ;
struct TYPE_2__ {int (* read ) (void*,int const,int const,struct nvkm_bios*) ;} ;


 scalar_t__ nvbios_extend (struct nvkm_bios*,int const) ;
 int stub1 (void*,int const,int const,struct nvkm_bios*) ;

__attribute__((used)) static bool
shadow_fetch(struct nvkm_bios *bios, struct shadow *mthd, u32 upto)
{
 const u32 limit = (upto + 3) & ~3;
 const u32 start = bios->size;
 void *data = mthd->data;
 if (nvbios_extend(bios, limit) > 0) {
  u32 read = mthd->func->read(data, start, limit - start, bios);
  bios->size = start + read;
 }
 return bios->size >= upto;
}
