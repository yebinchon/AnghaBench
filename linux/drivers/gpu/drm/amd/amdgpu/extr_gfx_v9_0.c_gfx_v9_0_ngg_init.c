
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int init; int * buf; scalar_t__ gds_reserve_addr; scalar_t__ gds_reserve_size; } ;
struct TYPE_6__ {TYPE_2__ ngg; } ;
struct TYPE_4__ {int gds_size; } ;
struct amdgpu_device {TYPE_3__ gfx; int dev; TYPE_1__ gds; } ;


 scalar_t__ ALIGN (int,int) ;
 int GC ;
 size_t NGG_CNTL ;
 size_t NGG_PARAM ;
 size_t NGG_POS ;
 size_t NGG_PRIM ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 scalar_t__ amdgpu_cntl_sb_buf_per_se ;
 int amdgpu_ngg ;
 scalar_t__ amdgpu_param_buf_per_se ;
 scalar_t__ amdgpu_pos_buf_per_se ;
 scalar_t__ amdgpu_prim_buf_per_se ;
 int dev_err (int ,char*) ;
 int gfx_v9_0_ngg_create_buf (struct amdgpu_device*,int *,scalar_t__,int) ;
 int gfx_v9_0_ngg_fini (struct amdgpu_device*) ;
 int mmGDS_VMID0_BASE ;
 int mmGDS_VMID0_SIZE ;

__attribute__((used)) static int gfx_v9_0_ngg_init(struct amdgpu_device *adev)
{
 int r;

 if (!amdgpu_ngg || adev->gfx.ngg.init == 1)
  return 0;


 adev->gfx.ngg.gds_reserve_size = ALIGN(5 * 4, 0x40);
 adev->gds.gds_size -= adev->gfx.ngg.gds_reserve_size;
 adev->gfx.ngg.gds_reserve_addr = RREG32_SOC15(GC, 0, mmGDS_VMID0_BASE);
 adev->gfx.ngg.gds_reserve_addr += RREG32_SOC15(GC, 0, mmGDS_VMID0_SIZE);


 r = gfx_v9_0_ngg_create_buf(adev, &adev->gfx.ngg.buf[NGG_PRIM],
        amdgpu_prim_buf_per_se,
        64 * 1024);
 if (r) {
  dev_err(adev->dev, "Failed to create Primitive Buffer\n");
  goto err;
 }


 r = gfx_v9_0_ngg_create_buf(adev, &adev->gfx.ngg.buf[NGG_POS],
        amdgpu_pos_buf_per_se,
        256 * 1024);
 if (r) {
  dev_err(adev->dev, "Failed to create Position Buffer\n");
  goto err;
 }


 r = gfx_v9_0_ngg_create_buf(adev, &adev->gfx.ngg.buf[NGG_CNTL],
        amdgpu_cntl_sb_buf_per_se,
        256);
 if (r) {
  dev_err(adev->dev, "Failed to create Control Sideband Buffer\n");
  goto err;
 }


 if (amdgpu_param_buf_per_se <= 0)
  goto out;

 r = gfx_v9_0_ngg_create_buf(adev, &adev->gfx.ngg.buf[NGG_PARAM],
        amdgpu_param_buf_per_se,
        512 * 1024);
 if (r) {
  dev_err(adev->dev, "Failed to create Parameter Cache\n");
  goto err;
 }

out:
 adev->gfx.ngg.init = 1;
 return 0;
err:
 gfx_v9_0_ngg_fini(adev);
 return r;
}
