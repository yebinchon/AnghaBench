
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_handle {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int ti_sci_put_handle (struct ti_sci_handle const*) ;

__attribute__((used)) static void devm_ti_sci_release(struct device *dev, void *res)
{
 const struct ti_sci_handle **ptr = res;
 const struct ti_sci_handle *handle = *ptr;
 int ret;

 ret = ti_sci_put_handle(handle);
 if (ret)
  dev_err(dev, "failed to put handle %d\n", ret);
}
