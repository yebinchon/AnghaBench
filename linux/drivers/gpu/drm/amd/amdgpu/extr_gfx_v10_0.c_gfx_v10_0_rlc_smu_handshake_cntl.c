
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmRLC_PG_CNTL ;

__attribute__((used)) static void gfx_v10_0_rlc_smu_handshake_cntl(struct amdgpu_device *adev,
          bool enable)
{
 uint32_t rlc_pg_cntl;

 rlc_pg_cntl = RREG32_SOC15(GC, 0, mmRLC_PG_CNTL);

 if (!enable) {
  rlc_pg_cntl |= 0x800000;
 } else
  rlc_pg_cntl &= ~0x800000;
 WREG32_SOC15(GC, 0, mmRLC_PG_CNTL, rlc_pg_cntl);
}
