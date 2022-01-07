
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder_primary_dac {int ps2_pdac_adj; } ;
struct radeon_device {size_t family; } ;


 int * default_primarydac_adj ;

__attribute__((used)) static void radeon_legacy_get_primary_dac_info_from_table(struct radeon_device *rdev,
         struct radeon_encoder_primary_dac *p_dac)
{
 p_dac->ps2_pdac_adj = default_primarydac_adj[rdev->family];
 return;
}
