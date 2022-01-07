
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse_protocol {unsigned int type; int maxproto; } ;
struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 struct psmouse_protocol* psmouse_protocol_by_name (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int psmouse_set_maxproto(const char *val, const struct kernel_param *kp)
{
 const struct psmouse_protocol *proto;

 if (!val)
  return -EINVAL;

 proto = psmouse_protocol_by_name(val, strlen(val));

 if (!proto || !proto->maxproto)
  return -EINVAL;

 *((unsigned int *)kp->arg) = proto->type;

 return 0;
}
