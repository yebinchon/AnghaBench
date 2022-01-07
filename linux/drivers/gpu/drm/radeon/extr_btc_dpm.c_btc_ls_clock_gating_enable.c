
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 int BARTS_SYSLS_DISABLE_LENGTH ;
 int BARTS_SYSLS_ENABLE_LENGTH ;
 int CAICOS_SYSLS_DISABLE_LENGTH ;
 int CAICOS_SYSLS_ENABLE_LENGTH ;
 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_CAICOS ;
 scalar_t__ CHIP_TURKS ;
 int TURKS_SYSLS_DISABLE_LENGTH ;
 int TURKS_SYSLS_ENABLE_LENGTH ;
 int barts_sysls_disable ;
 int barts_sysls_enable ;
 int btc_program_mgcg_hw_sequence (struct radeon_device*,int const*,int ) ;
 int caicos_sysls_disable ;
 int caicos_sysls_enable ;
 int turks_sysls_disable ;
 int turks_sysls_enable ;

__attribute__((used)) static void btc_ls_clock_gating_enable(struct radeon_device *rdev,
           bool enable)
{
 u32 count;
 const u32 *p = ((void*)0);

 if (enable) {
  if (rdev->family == CHIP_BARTS) {
   p = (const u32 *)&barts_sysls_enable;
   count = BARTS_SYSLS_ENABLE_LENGTH;
  } else if (rdev->family == CHIP_TURKS) {
   p = (const u32 *)&turks_sysls_enable;
   count = TURKS_SYSLS_ENABLE_LENGTH;
  } else if (rdev->family == CHIP_CAICOS) {
   p = (const u32 *)&caicos_sysls_enable;
   count = CAICOS_SYSLS_ENABLE_LENGTH;
  } else
   return;
 } else {
  if (rdev->family == CHIP_BARTS) {
   p = (const u32 *)&barts_sysls_disable;
   count = BARTS_SYSLS_DISABLE_LENGTH;
  } else if (rdev->family == CHIP_TURKS) {
   p = (const u32 *)&turks_sysls_disable;
   count = TURKS_SYSLS_DISABLE_LENGTH;
  } else if (rdev->family == CHIP_CAICOS) {
   p = (const u32 *)&caicos_sysls_disable;
   count = CAICOS_SYSLS_DISABLE_LENGTH;
  } else
   return;
 }

 btc_program_mgcg_hw_sequence(rdev, p, count);
}
