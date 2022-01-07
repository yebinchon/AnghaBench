
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;

__attribute__((used)) static ssize_t hgpk_trigger_recal_show(struct psmouse *psmouse,
  void *data, char *buf)
{
 return -EINVAL;
}
