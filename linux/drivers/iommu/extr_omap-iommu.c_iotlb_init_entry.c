
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct iotlb_entry {int pgsz; scalar_t__ mixed; int elsz; int endian; int valid; void* pa; void* da; } ;


 int MMU_CAM_V ;
 int MMU_RAM_ELSZ_8 ;
 int MMU_RAM_ENDIAN_LITTLE ;
 void* iopgsz_to_bytes (int) ;
 int memset (struct iotlb_entry*,int ,int) ;

__attribute__((used)) static u32 iotlb_init_entry(struct iotlb_entry *e, u32 da, u32 pa, int pgsz)
{
 memset(e, 0, sizeof(*e));

 e->da = da;
 e->pa = pa;
 e->valid = MMU_CAM_V;
 e->pgsz = pgsz;
 e->endian = MMU_RAM_ENDIAN_LITTLE;
 e->elsz = MMU_RAM_ELSZ_8;
 e->mixed = 0;

 return iopgsz_to_bytes(e->pgsz);
}
