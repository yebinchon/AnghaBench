
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mpu_data ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_path (char*) ;
 void* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static inline const struct mpu_data *wf_get_mpu(int cpu)
{
 struct device_node *np;
 char nodename[64];
 const void *data;
 int len;






 sprintf(nodename, "/u3@0,f8000000/i2c@f8001000/cpuid@a%d", cpu ? 2 : 0);
 np = of_find_node_by_path(nodename);
 if (!np)
  return ((void*)0);
 data = of_get_property(np, "cpuid", &len);
 of_node_put(np);
 if (!data)
  return ((void*)0);







 return data;
}
