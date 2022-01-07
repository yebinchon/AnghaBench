
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct etmv4_config {int viiectlr; void** addr_type; void** addr_acc; void** addr_val; } ;


 int BIT (int) ;
 void* ETM_ADDR_TYPE_RANGE ;
 void* etm4_get_access_type (struct etmv4_config*) ;

__attribute__((used)) static void etm4_set_comparator_filter(struct etmv4_config *config,
           u64 start, u64 stop, int comparator)
{
 u64 access_type = etm4_get_access_type(config);


 config->addr_val[comparator] = start;
 config->addr_acc[comparator] = access_type;
 config->addr_type[comparator] = ETM_ADDR_TYPE_RANGE;


 config->addr_val[comparator + 1] = stop;
 config->addr_acc[comparator + 1] = access_type;
 config->addr_type[comparator + 1] = ETM_ADDR_TYPE_RANGE;
 config->viiectlr |= BIT(comparator / 2);
}
