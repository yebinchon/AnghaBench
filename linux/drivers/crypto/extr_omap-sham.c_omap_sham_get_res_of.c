
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct omap_sham_dev {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int omap_sham_get_res_of(struct omap_sham_dev *dd,
  struct device *dev, struct resource *res)
{
 return -EINVAL;
}
