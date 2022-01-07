
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_caps {int dummy; } ;
struct hw_asic_id {int hw_internal_rev; } ;


 scalar_t__ ASIC_REV_IS_STONEY (int ) ;
 struct resource_caps const carrizo_resource_cap ;
 struct resource_caps const stoney_resource_cap ;

const struct resource_caps *dce110_resource_cap(
 struct hw_asic_id *asic_id)
{
 if (ASIC_REV_IS_STONEY(asic_id->hw_internal_rev))
  return &stoney_resource_cap;
 else
  return &carrizo_resource_cap;
}
