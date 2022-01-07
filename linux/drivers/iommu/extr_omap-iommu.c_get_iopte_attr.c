
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iotlb_entry {int mixed; int endian; int elsz; scalar_t__ pgsz; } ;


 scalar_t__ MMU_CAM_PGSZ_4K ;
 scalar_t__ MMU_CAM_PGSZ_64K ;

__attribute__((used)) static u32 get_iopte_attr(struct iotlb_entry *e)
{
 u32 attr;

 attr = e->mixed << 5;
 attr |= e->endian;
 attr |= e->elsz >> 3;
 attr <<= (((e->pgsz == MMU_CAM_PGSZ_4K) ||
   (e->pgsz == MMU_CAM_PGSZ_64K)) ? 0 : 6);
 return attr;
}
