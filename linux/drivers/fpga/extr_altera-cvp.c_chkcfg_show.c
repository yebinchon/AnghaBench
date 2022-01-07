
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int altera_cvp_chkcfg ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t chkcfg_show(struct device_driver *dev, char *buf)
{
 return snprintf(buf, 3, "%d\n", altera_cvp_chkcfg);
}
