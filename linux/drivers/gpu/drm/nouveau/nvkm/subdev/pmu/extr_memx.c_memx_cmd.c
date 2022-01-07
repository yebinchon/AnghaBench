
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ mthd; int * data; } ;
struct nvkm_memx {TYPE_1__ c; } ;
typedef int data ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int memcpy (int *,scalar_t__*,scalar_t__) ;
 int memx_out (struct nvkm_memx*) ;

__attribute__((used)) static void
memx_cmd(struct nvkm_memx *memx, u32 mthd, u32 size, u32 data[])
{
 if ((memx->c.size + size >= ARRAY_SIZE(memx->c.data)) ||
     (memx->c.mthd && memx->c.mthd != mthd))
  memx_out(memx);
 memcpy(&memx->c.data[memx->c.size], data, size * sizeof(data[0]));
 memx->c.size += size;
 memx->c.mthd = mthd;
}
