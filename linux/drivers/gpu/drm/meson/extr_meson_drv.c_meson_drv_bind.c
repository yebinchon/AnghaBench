
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int meson_drv_bind_master (struct device*,int) ;

__attribute__((used)) static int meson_drv_bind(struct device *dev)
{
 return meson_drv_bind_master(dev, 1);
}
