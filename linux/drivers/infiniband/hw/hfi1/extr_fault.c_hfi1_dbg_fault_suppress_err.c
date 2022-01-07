
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_ibdev {TYPE_1__* fault; } ;
struct TYPE_2__ {int suppress_err; } ;



bool hfi1_dbg_fault_suppress_err(struct hfi1_ibdev *ibd)
{
 if (ibd->fault)
  return ibd->fault->suppress_err;
 return 0;
}
