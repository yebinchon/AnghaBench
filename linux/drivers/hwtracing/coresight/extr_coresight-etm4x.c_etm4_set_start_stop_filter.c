
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct etmv4_config {int* addr_type; int vissctlr; void** addr_acc; void** addr_val; } ;
typedef enum etm_addr_type { ____Placeholder_etm_addr_type } etm_addr_type ;


 int BIT (int) ;
 int ETM_ADDR_TYPE_START ;
 void* etm4_get_access_type (struct etmv4_config*) ;

__attribute__((used)) static void etm4_set_start_stop_filter(struct etmv4_config *config,
           u64 address, int comparator,
           enum etm_addr_type type)
{
 int shift;
 u64 access_type = etm4_get_access_type(config);


 config->addr_val[comparator] = address;
 config->addr_acc[comparator] = access_type;
 config->addr_type[comparator] = type;






 shift = (type == ETM_ADDR_TYPE_START ? 0 : 16);
 config->vissctlr |= BIT(shift + comparator);
}
