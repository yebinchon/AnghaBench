
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_param {scalar_t__ arg; } ;
struct TYPE_2__ {char* name; } ;


 TYPE_1__* psmouse_protocol_by_type (int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int psmouse_get_maxproto(char *buffer, const struct kernel_param *kp)
{
 int type = *((unsigned int *)kp->arg);

 return sprintf(buffer, "%s", psmouse_protocol_by_type(type)->name);
}
