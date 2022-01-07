
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dumb_vga {scalar_t__ ddc; int bridge; } ;


 int drm_bridge_remove (int *) ;
 int i2c_put_adapter (scalar_t__) ;
 struct dumb_vga* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dumb_vga_remove(struct platform_device *pdev)
{
 struct dumb_vga *vga = platform_get_drvdata(pdev);

 drm_bridge_remove(&vga->bridge);

 if (vga->ddc)
  i2c_put_adapter(vga->ddc);

 return 0;
}
