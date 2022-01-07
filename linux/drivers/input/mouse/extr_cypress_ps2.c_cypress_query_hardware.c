
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int cypress_read_fw_version (struct psmouse*) ;
 int cypress_read_tp_metrics (struct psmouse*) ;

__attribute__((used)) static int cypress_query_hardware(struct psmouse *psmouse)
{
 int ret;

 ret = cypress_read_fw_version(psmouse);
 if (ret)
  return ret;

 ret = cypress_read_tp_metrics(psmouse);
 if (ret)
  return ret;

 return 0;
}
