
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager_ops {int dummy; } ;
struct fpga_manager {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int devm_fpga_mgr_release ;
 int devres_add (struct device*,struct fpga_manager**) ;
 struct fpga_manager** devres_alloc (int ,int,int ) ;
 int devres_free (struct fpga_manager**) ;
 struct fpga_manager* fpga_mgr_create (struct device*,char const*,struct fpga_manager_ops const*,void*) ;

struct fpga_manager *devm_fpga_mgr_create(struct device *dev, const char *name,
       const struct fpga_manager_ops *mops,
       void *priv)
{
 struct fpga_manager **ptr, *mgr;

 ptr = devres_alloc(devm_fpga_mgr_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ((void*)0);

 mgr = fpga_mgr_create(dev, name, mops, priv);
 if (!mgr) {
  devres_free(ptr);
 } else {
  *ptr = mgr;
  devres_add(dev, ptr);
 }

 return mgr;
}
