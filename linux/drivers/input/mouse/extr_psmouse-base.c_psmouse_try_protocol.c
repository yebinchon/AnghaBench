
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse_protocol {scalar_t__ (* init ) (struct psmouse*) ;int try_passthru; int detect; } ;
struct psmouse {int dummy; } ;
typedef enum psmouse_type { ____Placeholder_psmouse_type } psmouse_type ;


 unsigned int PSMOUSE_IMEX ;
 struct psmouse_protocol* __psmouse_protocol_by_type (int) ;
 int psmouse_do_detect (int ,struct psmouse*,int ,int) ;
 scalar_t__ stub1 (struct psmouse*) ;

__attribute__((used)) static bool psmouse_try_protocol(struct psmouse *psmouse,
     enum psmouse_type type,
     unsigned int *max_proto,
     bool set_properties, bool init_allowed)
{
 const struct psmouse_protocol *proto;

 proto = __psmouse_protocol_by_type(type);
 if (!proto)
  return 0;

 if (!psmouse_do_detect(proto->detect, psmouse, proto->try_passthru,
          set_properties))
  return 0;

 if (set_properties && proto->init && init_allowed) {
  if (proto->init(psmouse) != 0) {




   if (*max_proto > PSMOUSE_IMEX)
    *max_proto = PSMOUSE_IMEX;

   return 0;
  }
 }

 return 1;
}
