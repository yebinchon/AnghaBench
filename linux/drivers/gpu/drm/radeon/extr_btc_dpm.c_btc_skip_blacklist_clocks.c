
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ sclk; scalar_t__ mclk; scalar_t__ action; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ RADEON_SCLK_UP ;
 TYPE_1__* btc_blacklist_clocks ;
 scalar_t__ btc_get_valid_sclk (struct radeon_device*,scalar_t__ const,scalar_t__) ;

void btc_skip_blacklist_clocks(struct radeon_device *rdev,
          const u32 max_sclk, const u32 max_mclk,
          u32 *sclk, u32 *mclk)
{
 int i, num_blacklist_clocks;

 if ((sclk == ((void*)0)) || (mclk == ((void*)0)))
  return;

 num_blacklist_clocks = ARRAY_SIZE(btc_blacklist_clocks);

 for (i = 0; i < num_blacklist_clocks; i++) {
  if ((btc_blacklist_clocks[i].sclk == *sclk) &&
      (btc_blacklist_clocks[i].mclk == *mclk))
   break;
 }

 if (i < num_blacklist_clocks) {
  if (btc_blacklist_clocks[i].action == RADEON_SCLK_UP) {
   *sclk = btc_get_valid_sclk(rdev, max_sclk, *sclk + 1);

   if (*sclk < max_sclk)
    btc_skip_blacklist_clocks(rdev, max_sclk, max_mclk, sclk, mclk);
  }
 }
}
