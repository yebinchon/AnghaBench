
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {scalar_t__ cc_prescan; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t cc_prescan_show(struct hfi1_pportdata *ppd, char *buf)
{
 return sprintf(buf, "%s\n", ppd->cc_prescan ? "on" : "off");
}
