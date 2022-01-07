
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_drv_private {int clks; int num_clks; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;

__attribute__((used)) static void disable_clocks(void *data)
{
 struct caam_drv_private *ctrlpriv = data;

 clk_bulk_disable_unprepare(ctrlpriv->num_clks, ctrlpriv->clks);
}
