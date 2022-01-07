
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidled_rgb {int blue; int green; int red; } ;


 int hidled_init_led (int *,char*,struct hidled_rgb*,unsigned int) ;

__attribute__((used)) static int hidled_init_rgb(struct hidled_rgb *rgb, unsigned int minor)
{
 int ret;


 ret = hidled_init_led(&rgb->red, "red", rgb, minor);
 if (ret)
  return ret;


 ret = hidled_init_led(&rgb->green, "green", rgb, minor);
 if (ret)
  return ret;


 return hidled_init_led(&rgb->blue, "blue", rgb, minor);
}
