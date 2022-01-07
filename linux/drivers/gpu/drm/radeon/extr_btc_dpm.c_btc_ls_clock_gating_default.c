
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 int BARTS_SYSLS_DEFAULT_LENGTH ;
 int CAICOS_SYSLS_DEFAULT_LENGTH ;
 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_CAICOS ;
 scalar_t__ CHIP_TURKS ;
 int TURKS_SYSLS_DEFAULT_LENGTH ;
 int barts_sysls_default ;
 int btc_program_mgcg_hw_sequence (struct radeon_device*,int const*,int ) ;
 int caicos_sysls_default ;
 int turks_sysls_default ;

__attribute__((used)) static void btc_ls_clock_gating_default(struct radeon_device *rdev)
{
 u32 count;
 const u32 *p = ((void*)0);

 if (rdev->family == CHIP_BARTS) {
  p = (const u32 *)&barts_sysls_default;
  count = BARTS_SYSLS_DEFAULT_LENGTH;
 } else if (rdev->family == CHIP_TURKS) {
  p = (const u32 *)&turks_sysls_default;
  count = TURKS_SYSLS_DEFAULT_LENGTH;
 } else if (rdev->family == CHIP_CAICOS) {
  p = (const u32 *)&caicos_sysls_default;
  count = CAICOS_SYSLS_DEFAULT_LENGTH;
 } else
  return;

 btc_program_mgcg_hw_sequence(rdev, p, count);
}
