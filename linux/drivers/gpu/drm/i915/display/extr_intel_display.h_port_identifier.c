
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum port { ____Placeholder_port } port ;
__attribute__((used)) static inline const char *port_identifier(enum port port)
{
 switch (port) {
 case 136:
  return "Port A";
 case 135:
  return "Port B";
 case 134:
  return "Port C";
 case 133:
  return "Port D";
 case 132:
  return "Port E";
 case 131:
  return "Port F";
 case 130:
  return "Port G";
 case 129:
  return "Port H";
 case 128:
  return "Port I";
 default:
  return "<invalid>";
 }
}
