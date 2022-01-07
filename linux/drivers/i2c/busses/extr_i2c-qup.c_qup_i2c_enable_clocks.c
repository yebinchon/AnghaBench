
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_dev {int pclk; int clk; } ;


 int clk_prepare_enable (int ) ;

__attribute__((used)) static void qup_i2c_enable_clocks(struct qup_i2c_dev *qup)
{
 clk_prepare_enable(qup->clk);
 clk_prepare_enable(qup->pclk);
}
