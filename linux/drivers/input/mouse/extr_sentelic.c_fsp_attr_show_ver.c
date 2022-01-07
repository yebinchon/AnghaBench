
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int ssize_t ;


 char* fsp_drv_ver ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t fsp_attr_show_ver(struct psmouse *psmouse,
     void *data, char *buf)
{
 return sprintf(buf, "Sentelic FSP kernel module %s\n", fsp_drv_ver);
}
