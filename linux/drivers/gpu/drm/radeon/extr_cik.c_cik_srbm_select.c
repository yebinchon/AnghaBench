
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int MEID (int) ;
 int PIPEID (int) ;
 int QUEUEID (int) ;
 int SRBM_GFX_CNTL ;
 int VMID (int) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void cik_srbm_select(struct radeon_device *rdev,
       u32 me, u32 pipe, u32 queue, u32 vmid)
{
 u32 srbm_gfx_cntl = (PIPEID(pipe & 0x3) |
        MEID(me & 0x3) |
        VMID(vmid & 0xf) |
        QUEUEID(queue & 0x7));
 WREG32(SRBM_GFX_CNTL, srbm_gfx_cntl);
}
