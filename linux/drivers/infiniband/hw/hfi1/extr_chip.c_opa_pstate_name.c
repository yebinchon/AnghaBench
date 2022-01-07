
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ARRAY_SIZE (char const* const*) ;

const char *opa_pstate_name(u32 pstate)
{
 static const char * const port_physical_names[] = {
  "PHYS_NOP",
  "reserved1",
  "PHYS_POLL",
  "PHYS_DISABLED",
  "PHYS_TRAINING",
  "PHYS_LINKUP",
  "PHYS_LINK_ERR_RECOVER",
  "PHYS_PHY_TEST",
  "reserved8",
  "PHYS_OFFLINE",
  "PHYS_GANGED",
  "PHYS_TEST",
 };
 if (pstate < ARRAY_SIZE(port_physical_names))
  return port_physical_names[pstate];
 return "unknown";
}
