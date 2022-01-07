
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_PM_NUMBER_OF_TC ;
 int R600_TD_DFLT ;
 int * r600_dtc ;
 int r600_select_td (struct radeon_device*,int ) ;
 int r600_set_tc (struct radeon_device*,int,int ,int ) ;
 int * r600_utc ;

__attribute__((used)) static void rv6xx_program_tp(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < R600_PM_NUMBER_OF_TC; i++)
  r600_set_tc(rdev, i, r600_utc[i], r600_dtc[i]);

 r600_select_td(rdev, R600_TD_DFLT);
}
