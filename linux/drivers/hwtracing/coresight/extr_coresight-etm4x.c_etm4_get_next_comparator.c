
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etmv4_config {int * addr_type; } ;
struct etmv4_drvdata {int nr_addr_cmp; struct etmv4_config config; } ;


 int EINVAL ;
 int ENOSPC ;
 int ETM_ADDR_TYPE_NONE ;




__attribute__((used)) static int etm4_get_next_comparator(struct etmv4_drvdata *drvdata, u32 type)
{
 int nr_comparator, index = 0;
 struct etmv4_config *config = &drvdata->config;





 nr_comparator = drvdata->nr_addr_cmp * 2;


 while (index < nr_comparator) {
  switch (type) {
  case 130:
   if (config->addr_type[index] == ETM_ADDR_TYPE_NONE &&
       config->addr_type[index + 1] == ETM_ADDR_TYPE_NONE)
    return index;


   index += 2;
   break;
  case 129:
  case 128:
   if (config->addr_type[index] == ETM_ADDR_TYPE_NONE)
    return index;


   index += 1;
   break;
  default:
   return -EINVAL;
  }
 }


 return -ENOSPC;
}
