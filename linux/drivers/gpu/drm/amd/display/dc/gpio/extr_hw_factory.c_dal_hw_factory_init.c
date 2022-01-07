
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_factory {int dummy; } ;
typedef enum dce_version { ____Placeholder_dce_version } dce_version ;
typedef enum dce_environment { ____Placeholder_dce_environment } dce_environment ;


 int ASSERT_CRITICAL (int) ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (int) ;
 int dal_hw_factory_dce110_init (struct hw_factory*) ;
 int dal_hw_factory_dce120_init (struct hw_factory*) ;
 int dal_hw_factory_dce80_init (struct hw_factory*) ;
 int dal_hw_factory_dcn10_init (struct hw_factory*) ;
 int dal_hw_factory_dcn20_init (struct hw_factory*) ;
 int dal_hw_factory_dcn21_init (struct hw_factory*) ;
 int dal_hw_factory_diag_fpga_init (struct hw_factory*) ;

bool dal_hw_factory_init(
 struct hw_factory *factory,
 enum dce_version dce_version,
 enum dce_environment dce_environment)
{
 if (IS_FPGA_MAXIMUS_DC(dce_environment)) {
  dal_hw_factory_diag_fpga_init(factory);
  return 1;
 }

 switch (dce_version) {
 case 134:
 case 133:
 case 132:
  dal_hw_factory_dce80_init(factory);
  return 1;

 case 140:
  dal_hw_factory_dce110_init(factory);
  return 1;
 case 139:
 case 138:
 case 137:
  dal_hw_factory_dce110_init(factory);
  return 1;
 case 136:
 case 135:
  dal_hw_factory_dce120_init(factory);
  return 1;
 default:
  ASSERT_CRITICAL(0);
  return 0;
 }
}
