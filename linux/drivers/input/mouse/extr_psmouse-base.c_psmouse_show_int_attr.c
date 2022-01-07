
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t psmouse_show_int_attr(struct psmouse *psmouse, void *offset, char *buf)
{
 unsigned int *field = (unsigned int *)((char *)psmouse + (size_t)offset);

 return sprintf(buf, "%u\n", *field);
}
