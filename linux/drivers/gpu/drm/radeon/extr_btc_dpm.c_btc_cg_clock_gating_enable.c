
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 int BARTS_CGCG_CGLS_DISABLE_LENGTH ;
 int BARTS_CGCG_CGLS_ENABLE_LENGTH ;
 int CAICOS_CGCG_CGLS_DISABLE_LENGTH ;
 int CAICOS_CGCG_CGLS_ENABLE_LENGTH ;
 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_CAICOS ;
 scalar_t__ CHIP_TURKS ;
 int TURKS_CGCG_CGLS_DISABLE_LENGTH ;
 int TURKS_CGCG_CGLS_ENABLE_LENGTH ;
 int barts_cgcg_cgls_disable ;
 int barts_cgcg_cgls_enable ;
 int btc_program_mgcg_hw_sequence (struct radeon_device*,int const*,int ) ;
 int caicos_cgcg_cgls_disable ;
 int caicos_cgcg_cgls_enable ;
 int turks_cgcg_cgls_disable ;
 int turks_cgcg_cgls_enable ;

__attribute__((used)) static void btc_cg_clock_gating_enable(struct radeon_device *rdev,
           bool enable)
{
 u32 count;
 const u32 *p = ((void*)0);

 if (enable) {
  if (rdev->family == CHIP_BARTS) {
   p = (const u32 *)&barts_cgcg_cgls_enable;
   count = BARTS_CGCG_CGLS_ENABLE_LENGTH;
  } else if (rdev->family == CHIP_TURKS) {
   p = (const u32 *)&turks_cgcg_cgls_enable;
   count = TURKS_CGCG_CGLS_ENABLE_LENGTH;
  } else if (rdev->family == CHIP_CAICOS) {
   p = (const u32 *)&caicos_cgcg_cgls_enable;
   count = CAICOS_CGCG_CGLS_ENABLE_LENGTH;
  } else
   return;
 } else {
  if (rdev->family == CHIP_BARTS) {
   p = (const u32 *)&barts_cgcg_cgls_disable;
   count = BARTS_CGCG_CGLS_DISABLE_LENGTH;
  } else if (rdev->family == CHIP_TURKS) {
   p = (const u32 *)&turks_cgcg_cgls_disable;
   count = TURKS_CGCG_CGLS_DISABLE_LENGTH;
  } else if (rdev->family == CHIP_CAICOS) {
   p = (const u32 *)&caicos_cgcg_cgls_disable;
   count = CAICOS_CGCG_CGLS_DISABLE_LENGTH;
  } else
   return;
 }

 btc_program_mgcg_hw_sequence(rdev, p, count);
}
