
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld9040 {int height_mm; int width_mm; int reset_delay; int power_on_delay; int vm; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int of_get_videomode (struct device_node*,int *,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int ld9040_parse_dt(struct ld9040 *ctx)
{
 struct device *dev = ctx->dev;
 struct device_node *np = dev->of_node;
 int ret;

 ret = of_get_videomode(np, &ctx->vm, 0);
 if (ret < 0)
  return ret;

 of_property_read_u32(np, "power-on-delay", &ctx->power_on_delay);
 of_property_read_u32(np, "reset-delay", &ctx->reset_delay);
 of_property_read_u32(np, "panel-width-mm", &ctx->width_mm);
 of_property_read_u32(np, "panel-height-mm", &ctx->height_mm);

 return 0;
}
