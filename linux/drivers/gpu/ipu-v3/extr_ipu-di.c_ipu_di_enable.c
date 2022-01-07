
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_di {int module; int ipu; int clk_di_pixel; } ;


 int IS_ERR (int ) ;
 int WARN_ON (int ) ;
 int clk_prepare_enable (int ) ;
 int ipu_module_enable (int ,int ) ;

int ipu_di_enable(struct ipu_di *di)
{
 int ret;

 WARN_ON(IS_ERR(di->clk_di_pixel));

 ret = clk_prepare_enable(di->clk_di_pixel);
 if (ret)
  return ret;

 ipu_module_enable(di->ipu, di->module);

 return 0;
}
