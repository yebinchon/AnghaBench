
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse_protocol {int dummy; } ;
typedef enum psmouse_type { ____Placeholder_psmouse_type } psmouse_type ;


 int WARN_ON (int) ;
 struct psmouse_protocol* __psmouse_protocol_by_type (int) ;
 struct psmouse_protocol const* psmouse_protocols ;

__attribute__((used)) static const struct psmouse_protocol *psmouse_protocol_by_type(enum psmouse_type type)
{
 const struct psmouse_protocol *proto;

 proto = __psmouse_protocol_by_type(type);
 if (proto)
  return proto;

 WARN_ON(1);
 return &psmouse_protocols[0];
}
