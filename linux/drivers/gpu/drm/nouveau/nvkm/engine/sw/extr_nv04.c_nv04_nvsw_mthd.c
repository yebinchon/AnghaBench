
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_nvsw {int dummy; } ;


 int EINVAL ;

 int nv04_nvsw_mthd_get_ref (struct nvkm_nvsw*,void*,int) ;

__attribute__((used)) static int
nv04_nvsw_mthd(struct nvkm_nvsw *nvsw, u32 mthd, void *data, u32 size)
{
 switch (mthd) {
 case 128:
  return nv04_nvsw_mthd_get_ref(nvsw, data, size);
 default:
  break;
 }
 return -EINVAL;
}
