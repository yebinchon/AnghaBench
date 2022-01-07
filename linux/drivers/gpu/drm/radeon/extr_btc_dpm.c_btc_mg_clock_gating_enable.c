
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 int BARTS_MGCG_DISABLE_LENGTH ;
 int BARTS_MGCG_ENABLE_LENGTH ;
 int CAICOS_MGCG_DISABLE_LENGTH ;
 int CAICOS_MGCG_ENABLE_LENGTH ;
 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_CAICOS ;
 scalar_t__ CHIP_TURKS ;
 int TURKS_MGCG_DISABLE_LENGTH ;
 int TURKS_MGCG_ENABLE_LENGTH ;
 int * barts_mgcg_disable ;
 int barts_mgcg_enable ;
 int btc_program_mgcg_hw_sequence (struct radeon_device*,int const*,int ) ;
 int * caicos_mgcg_disable ;
 int caicos_mgcg_enable ;
 int * turks_mgcg_disable ;
 int turks_mgcg_enable ;

__attribute__((used)) static void btc_mg_clock_gating_enable(struct radeon_device *rdev,
           bool enable)
{
 u32 count;
 const u32 *p = ((void*)0);

 if (enable) {
  if (rdev->family == CHIP_BARTS) {
   p = (const u32 *)&barts_mgcg_enable;
   count = BARTS_MGCG_ENABLE_LENGTH;
  } else if (rdev->family == CHIP_TURKS) {
   p = (const u32 *)&turks_mgcg_enable;
   count = TURKS_MGCG_ENABLE_LENGTH;
  } else if (rdev->family == CHIP_CAICOS) {
   p = (const u32 *)&caicos_mgcg_enable;
   count = CAICOS_MGCG_ENABLE_LENGTH;
  } else
   return;
 } else {
  if (rdev->family == CHIP_BARTS) {
   p = (const u32 *)&barts_mgcg_disable[0];
   count = BARTS_MGCG_DISABLE_LENGTH;
  } else if (rdev->family == CHIP_TURKS) {
   p = (const u32 *)&turks_mgcg_disable[0];
   count = TURKS_MGCG_DISABLE_LENGTH;
  } else if (rdev->family == CHIP_CAICOS) {
   p = (const u32 *)&caicos_mgcg_disable[0];
   count = CAICOS_MGCG_DISABLE_LENGTH;
  } else
   return;
 }

 btc_program_mgcg_hw_sequence(rdev, p, count);
}
