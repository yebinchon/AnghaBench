
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int * of_get_property (struct device_node*,char*,unsigned int*) ;
 unsigned int of_n_addr_cells (struct device_node*) ;
 unsigned int of_n_size_cells (struct device_node*) ;
 int of_read_number (int const*,int) ;

__attribute__((used)) static bool fsi_slave_node_matches(struct device_node *np,
  int link, uint8_t id)
{
 unsigned int len, na, ns;
 const __be32 *prop;

 na = of_n_addr_cells(np);
 ns = of_n_size_cells(np);




 if (na != 2 || ns != 0)
  return 0;

 prop = of_get_property(np, "reg", &len);
 if (!prop || len != 8)
  return 0;

 return (of_read_number(prop, 1) == link) &&
  (of_read_number(prop + 1, 1) == id);
}
