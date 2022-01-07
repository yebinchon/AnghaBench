
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int smartscroll; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ps2pp_attr_show_smartscroll(struct psmouse *psmouse,
        void *data, char *buf)
{
 return sprintf(buf, "%d\n", psmouse->smartscroll);
}
