
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {TYPE_1__* protocol; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t psmouse_attr_show_protocol(struct psmouse *psmouse, void *data, char *buf)
{
 return sprintf(buf, "%s\n", psmouse->protocol->name);
}
