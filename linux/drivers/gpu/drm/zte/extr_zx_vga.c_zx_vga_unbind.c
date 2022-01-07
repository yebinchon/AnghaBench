
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vga {int i2c_wclk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct zx_vga* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void zx_vga_unbind(struct device *dev, struct device *master,
     void *data)
{
 struct zx_vga *vga = dev_get_drvdata(dev);

 clk_disable_unprepare(vga->i2c_wclk);
}
