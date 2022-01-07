
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dw_i2c_dev {TYPE_1__* controller; } ;
struct TYPE_2__ {int clk_khz; } ;



__attribute__((used)) static u32 i2c_dw_get_clk_rate_khz(struct dw_i2c_dev *dev)
{
 return dev->controller->clk_khz;
}
