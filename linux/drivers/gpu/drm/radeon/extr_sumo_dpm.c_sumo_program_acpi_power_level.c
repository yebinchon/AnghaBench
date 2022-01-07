
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sclk; } ;
struct sumo_power_info {TYPE_1__ acpi_pl; } ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int post_div; } ;


 int ACPI_VOLTAGE_EN ;
 int CG_ACPI_CNTL ;
 int CG_ACPI_VOLTAGE_CNTL ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int SCLK_ACPI_DIV (int ) ;
 int SCLK_ACPI_DIV_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

__attribute__((used)) static void sumo_program_acpi_power_level(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 struct atom_clock_dividers dividers;
 int ret;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          pi->acpi_pl.sclk,
          0, &dividers);
 if (ret)
  return;

 WREG32_P(CG_ACPI_CNTL, SCLK_ACPI_DIV(dividers.post_div), ~SCLK_ACPI_DIV_MASK);
 WREG32_P(CG_ACPI_VOLTAGE_CNTL, 0, ~ACPI_VOLTAGE_EN);
}
