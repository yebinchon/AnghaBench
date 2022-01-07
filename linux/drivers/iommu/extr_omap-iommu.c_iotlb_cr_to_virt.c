
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cr_regs {int cam; } ;


 int MMU_CAM_PGSZ_MASK ;
 int get_cam_va_mask (int) ;

__attribute__((used)) static u32 iotlb_cr_to_virt(struct cr_regs *cr)
{
 u32 page_size = cr->cam & MMU_CAM_PGSZ_MASK;
 u32 mask = get_cam_va_mask(cr->cam & page_size);

 return cr->cam & mask;
}
