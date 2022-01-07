
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coresight_platform_data {int nr_outport; TYPE_1__* conns; } ;
struct TYPE_2__ {int * child_fwnode; } ;


 int fwnode_handle_put (int *) ;

void coresight_release_platform_data(struct coresight_platform_data *pdata)
{
 int i;

 for (i = 0; i < pdata->nr_outport; i++) {
  if (pdata->conns[i].child_fwnode) {
   fwnode_handle_put(pdata->conns[i].child_fwnode);
   pdata->conns[i].child_fwnode = ((void*)0);
  }
 }
}
