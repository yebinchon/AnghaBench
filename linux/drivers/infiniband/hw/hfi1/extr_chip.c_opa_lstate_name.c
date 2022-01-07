
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ARRAY_SIZE (char const* const*) ;

const char *opa_lstate_name(u32 lstate)
{
 static const char * const port_logical_names[] = {
  "PORT_NOP",
  "PORT_DOWN",
  "PORT_INIT",
  "PORT_ARMED",
  "PORT_ACTIVE",
  "PORT_ACTIVE_DEFER",
 };
 if (lstate < ARRAY_SIZE(port_logical_names))
  return port_logical_names[lstate];
 return "unknown";
}
