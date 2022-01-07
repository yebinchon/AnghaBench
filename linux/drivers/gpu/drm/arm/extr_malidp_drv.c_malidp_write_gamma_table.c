
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const u32 ;
struct malidp_hw_device {TYPE_2__* hw; } ;
struct TYPE_3__ {scalar_t__ coeffs_base; } ;
struct TYPE_4__ {TYPE_1__ map; } ;


 int const GENMASK (int,int) ;
 int MALIDP_COEFFTAB_NUM_COEFFS ;
 scalar_t__ MALIDP_COEF_TABLE_ADDR ;
 scalar_t__ MALIDP_COEF_TABLE_DATA ;
 int malidp_hw_write (struct malidp_hw_device*,int const,scalar_t__) ;

__attribute__((used)) static void malidp_write_gamma_table(struct malidp_hw_device *hwdev,
         u32 data[MALIDP_COEFFTAB_NUM_COEFFS])
{
 int i;

 const u32 gamma_write_mask = GENMASK(18, 16);





 malidp_hw_write(hwdev, gamma_write_mask,
   hwdev->hw->map.coeffs_base + MALIDP_COEF_TABLE_ADDR);
 for (i = 0; i < MALIDP_COEFFTAB_NUM_COEFFS; ++i)
  malidp_hw_write(hwdev, data[i],
    hwdev->hw->map.coeffs_base +
    MALIDP_COEF_TABLE_DATA);
}
