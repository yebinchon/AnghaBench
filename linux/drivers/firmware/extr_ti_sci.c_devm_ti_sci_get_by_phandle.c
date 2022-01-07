
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_handle {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct ti_sci_handle const* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct ti_sci_handle const*) ;
 int dev_of_node (struct device*) ;
 int devm_ti_sci_release ;
 int devres_add (struct device*,struct ti_sci_handle const**) ;
 struct ti_sci_handle** devres_alloc (int ,int,int ) ;
 int devres_free (struct ti_sci_handle const**) ;
 struct ti_sci_handle* ti_sci_get_by_phandle (int ,char const*) ;

const struct ti_sci_handle *devm_ti_sci_get_by_phandle(struct device *dev,
             const char *property)
{
 const struct ti_sci_handle *handle;
 const struct ti_sci_handle **ptr;

 ptr = devres_alloc(devm_ti_sci_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);
 handle = ti_sci_get_by_phandle(dev_of_node(dev), property);

 if (!IS_ERR(handle)) {
  *ptr = handle;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return handle;
}
