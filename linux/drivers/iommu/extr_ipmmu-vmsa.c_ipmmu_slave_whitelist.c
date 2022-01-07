
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int dev_name (struct device*) ;
 int * rcar_gen3_slave_whitelist ;
 int soc_device_match (int ) ;
 int soc_rcar_gen3 ;
 int soc_rcar_gen3_whitelist ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool ipmmu_slave_whitelist(struct device *dev)
{
 unsigned int i;





 if (!soc_device_match(soc_rcar_gen3))
  return 1;


 if (!soc_device_match(soc_rcar_gen3_whitelist))
  return 0;


 for (i = 0; i < ARRAY_SIZE(rcar_gen3_slave_whitelist); i++) {
  if (!strcmp(dev_name(dev), rcar_gen3_slave_whitelist[i]))
   return 1;
 }


 return 0;
}
