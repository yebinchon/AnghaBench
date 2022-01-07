
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef int __be32 ;


 int dev_warn (struct device*,char*,int ,scalar_t__,scalar_t__) ;
 int * of_get_property (struct device_node*,char*,unsigned int*) ;
 unsigned int of_n_addr_cells (struct device_node*) ;
 unsigned int of_n_size_cells (struct device_node*) ;
 int of_node_full_name (struct device_node*) ;
 scalar_t__ of_read_number (int const*,int) ;

__attribute__((used)) static bool fsi_device_node_matches(struct device *dev, struct device_node *np,
  uint32_t addr, uint32_t size)
{
 unsigned int len, na, ns;
 const __be32 *prop;
 uint32_t psize;

 na = of_n_addr_cells(np);
 ns = of_n_size_cells(np);

 if (na != 1 || ns != 1)
  return 0;

 prop = of_get_property(np, "reg", &len);
 if (!prop || len != 8)
  return 0;

 if (of_read_number(prop, 1) != addr)
  return 0;

 psize = of_read_number(prop + 1, 1);
 if (psize != size) {
  dev_warn(dev,
   "node %s matches probed address, but not size (got 0x%x, expected 0x%x)",
   of_node_full_name(np), psize, size);
 }

 return 1;
}
