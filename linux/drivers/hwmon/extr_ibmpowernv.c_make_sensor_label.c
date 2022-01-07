
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sensor_data {int label; } ;
struct device_node {int dummy; } ;


 int get_logical_cpu (int) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 size_t snprintf (int ,int,char*,...) ;

__attribute__((used)) static void make_sensor_label(struct device_node *np,
         struct sensor_data *sdata, const char *label)
{
 u32 id;
 size_t n;

 n = snprintf(sdata->label, sizeof(sdata->label), "%s", label);




 if (!of_property_read_u32(np, "ibm,pir", &id)) {
  int cpuid = get_logical_cpu(id);

  if (cpuid >= 0)




   n += snprintf(sdata->label + n,
          sizeof(sdata->label) - n, " %d",
          cpuid);
  else
   n += snprintf(sdata->label + n,
          sizeof(sdata->label) - n, " phy%d", id);
 }




 if (!of_property_read_u32(np, "ibm,chip-id", &id))
  n += snprintf(sdata->label + n, sizeof(sdata->label) - n,
         " %d", id & 0xffff);
}
