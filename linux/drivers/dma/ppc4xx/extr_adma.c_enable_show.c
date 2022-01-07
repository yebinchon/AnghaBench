
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ ppc440spe_r6_enabled ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t enable_show(struct device_driver *dev, char *buf)
{
 return snprintf(buf, PAGE_SIZE,
   "PPC440SP(e) RAID-6 capabilities are %sABLED.\n",
   ppc440spe_r6_enabled ? "EN" : "DIS");
}
