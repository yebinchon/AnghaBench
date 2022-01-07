
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int work; int op_state; int edac_check; } ;


 int OP_OFFLINE ;
 int edac_stop_work (int *) ;

__attribute__((used)) static void edac_device_workq_teardown(struct edac_device_ctl_info *edac_dev)
{
 if (!edac_dev->edac_check)
  return;

 edac_dev->op_state = OP_OFFLINE;

 edac_stop_work(&edac_dev->work);
}
