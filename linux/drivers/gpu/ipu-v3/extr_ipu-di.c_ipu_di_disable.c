
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_di {int clk_di_pixel; int module; int ipu; } ;


 int IS_ERR (int ) ;
 int WARN_ON (int ) ;
 int clk_disable_unprepare (int ) ;
 int ipu_module_disable (int ,int ) ;

int ipu_di_disable(struct ipu_di *di)
{
 WARN_ON(IS_ERR(di->clk_di_pixel));

 ipu_module_disable(di->ipu, di->module);

 clk_disable_unprepare(di->clk_di_pixel);

 return 0;
}
