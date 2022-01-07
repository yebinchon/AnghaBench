
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_caps {int dummy; } ;
struct hw_asic_id {int hw_internal_rev; } ;


 scalar_t__ ASIC_REV_IS_POLARIS11_M (int ) ;
 scalar_t__ ASIC_REV_IS_POLARIS12_V (int ) ;
 struct resource_caps const polaris_10_resource_cap ;
 struct resource_caps const polaris_11_resource_cap ;

const struct resource_caps *dce112_resource_cap(
 struct hw_asic_id *asic_id)
{
 if (ASIC_REV_IS_POLARIS11_M(asic_id->hw_internal_rev) ||
     ASIC_REV_IS_POLARIS12_V(asic_id->hw_internal_rev))
  return &polaris_11_resource_cap;
 else
  return &polaris_10_resource_cap;
}
