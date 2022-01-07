
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct of_device_id {int compatible; } ;
typedef scalar_t__ resource_size_t ;


 scalar_t__ MALIDP500_ADDR_SPACE_SIZE ;
 scalar_t__ MALIDP550_ADDR_SPACE_SIZE ;
 scalar_t__ resource_size (struct resource const*) ;
 int strnstr (int ,char const*,int) ;

__attribute__((used)) static bool malidp_has_sufficient_address_space(const struct resource *res,
      const struct of_device_id *dev_id)
{
 resource_size_t res_size = resource_size(res);
 const char *compatstr_dp500 = "arm,mali-dp500";

 if (!strnstr(dev_id->compatible, compatstr_dp500,
       sizeof(dev_id->compatible)))
  return res_size >= MALIDP550_ADDR_SPACE_SIZE;
 else if (res_size < MALIDP500_ADDR_SPACE_SIZE)
  return 0;
 return 1;
}
