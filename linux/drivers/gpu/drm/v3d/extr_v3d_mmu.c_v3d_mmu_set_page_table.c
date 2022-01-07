
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int pt_paddr; int mmu_scratch_paddr; } ;


 int V3D_MMUC_CONTROL ;
 int V3D_MMUC_CONTROL_ENABLE ;
 int V3D_MMU_CTL ;
 int V3D_MMU_CTL_CAP_EXCEEDED_ABORT ;
 int V3D_MMU_CTL_CAP_EXCEEDED_INT ;
 int V3D_MMU_CTL_ENABLE ;
 int V3D_MMU_CTL_PT_INVALID_ABORT ;
 int V3D_MMU_CTL_PT_INVALID_ENABLE ;
 int V3D_MMU_CTL_PT_INVALID_INT ;
 int V3D_MMU_CTL_WRITE_VIOLATION_ABORT ;
 int V3D_MMU_CTL_WRITE_VIOLATION_INT ;
 int V3D_MMU_ILLEGAL_ADDR ;
 int V3D_MMU_ILLEGAL_ADDR_ENABLE ;
 int V3D_MMU_PAGE_SHIFT ;
 int V3D_MMU_PT_PA_BASE ;
 int V3D_WRITE (int ,int) ;
 int v3d_mmu_flush_all (struct v3d_dev*) ;

int v3d_mmu_set_page_table(struct v3d_dev *v3d)
{
 V3D_WRITE(V3D_MMU_PT_PA_BASE, v3d->pt_paddr >> V3D_MMU_PAGE_SHIFT);
 V3D_WRITE(V3D_MMU_CTL,
    V3D_MMU_CTL_ENABLE |
    V3D_MMU_CTL_PT_INVALID_ENABLE |
    V3D_MMU_CTL_PT_INVALID_ABORT |
    V3D_MMU_CTL_PT_INVALID_INT |
    V3D_MMU_CTL_WRITE_VIOLATION_ABORT |
    V3D_MMU_CTL_WRITE_VIOLATION_INT |
    V3D_MMU_CTL_CAP_EXCEEDED_ABORT |
    V3D_MMU_CTL_CAP_EXCEEDED_INT);
 V3D_WRITE(V3D_MMU_ILLEGAL_ADDR,
    (v3d->mmu_scratch_paddr >> V3D_MMU_PAGE_SHIFT) |
    V3D_MMU_ILLEGAL_ADDR_ENABLE);
 V3D_WRITE(V3D_MMUC_CONTROL, V3D_MMUC_CONTROL_ENABLE);

 return v3d_mmu_flush_all(v3d);
}
