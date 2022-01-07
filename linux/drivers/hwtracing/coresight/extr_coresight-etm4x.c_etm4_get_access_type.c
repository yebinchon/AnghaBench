
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct etmv4_config {int dummy; } ;


 int ETM_EXLEVEL_S_APP ;
 int ETM_EXLEVEL_S_HYP ;
 int ETM_EXLEVEL_S_OS ;
 int etm4_get_ns_access_type (struct etmv4_config*) ;

__attribute__((used)) static u64 etm4_get_access_type(struct etmv4_config *config)
{
 u64 access_type = etm4_get_ns_access_type(config);





 access_type |= (ETM_EXLEVEL_S_APP |
   ETM_EXLEVEL_S_OS |
   ETM_EXLEVEL_S_HYP);

 return access_type;
}
