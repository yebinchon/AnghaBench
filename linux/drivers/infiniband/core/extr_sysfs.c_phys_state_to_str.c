
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_port_phys_state { ____Placeholder_ib_port_phys_state } ib_port_phys_state ;


 int ARRAY_SIZE (char const**) ;

__attribute__((used)) static const char *phys_state_to_str(enum ib_port_phys_state phys_state)
{
 static const char * phys_state_str[] = {
  "<unknown>",
  "Sleep",
  "Polling",
  "Disabled",
  "PortConfigurationTraining",
  "LinkUp",
  "LinkErrorRecovery",
  "Phy Test",
 };

 if (phys_state < ARRAY_SIZE(phys_state_str))
  return phys_state_str[phys_state];
 return "<unknown>";
}
