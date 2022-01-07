
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 int BARTS_MGCG_DEFAULT_LENGTH ;
 int CAICOS_MGCG_DEFAULT_LENGTH ;
 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_CAICOS ;
 scalar_t__ CHIP_TURKS ;
 int TURKS_MGCG_DEFAULT_LENGTH ;
 int barts_mgcg_default ;
 int btc_program_mgcg_hw_sequence (struct radeon_device*,int const*,int ) ;
 int caicos_mgcg_default ;
 int turks_mgcg_default ;

__attribute__((used)) static void btc_mg_clock_gating_default(struct radeon_device *rdev)
{
 u32 count;
 const u32 *p = ((void*)0);

 if (rdev->family == CHIP_BARTS) {
  p = (const u32 *)&barts_mgcg_default;
  count = BARTS_MGCG_DEFAULT_LENGTH;
 } else if (rdev->family == CHIP_TURKS) {
  p = (const u32 *)&turks_mgcg_default;
  count = TURKS_MGCG_DEFAULT_LENGTH;
 } else if (rdev->family == CHIP_CAICOS) {
  p = (const u32 *)&caicos_mgcg_default;
  count = CAICOS_MGCG_DEFAULT_LENGTH;
 } else
  return;

 btc_program_mgcg_hw_sequence(rdev, p, count);
}
