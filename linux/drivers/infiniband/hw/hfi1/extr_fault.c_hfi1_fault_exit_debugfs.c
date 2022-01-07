
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_ibdev {TYPE_1__* fault; } ;
struct TYPE_2__ {int dir; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (TYPE_1__*) ;

void hfi1_fault_exit_debugfs(struct hfi1_ibdev *ibd)
{
 if (ibd->fault)
  debugfs_remove_recursive(ibd->fault->dir);
 kfree(ibd->fault);
 ibd->fault = ((void*)0);
}
