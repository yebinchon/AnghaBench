
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse_protocol {int type; } ;
typedef enum psmouse_type { ____Placeholder_psmouse_type } psmouse_type ;


 int ARRAY_SIZE (struct psmouse_protocol const*) ;
 struct psmouse_protocol const* psmouse_protocols ;

__attribute__((used)) static const struct psmouse_protocol *__psmouse_protocol_by_type(enum psmouse_type type)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(psmouse_protocols); i++)
  if (psmouse_protocols[i].type == type)
   return &psmouse_protocols[i];

 return ((void*)0);
}
