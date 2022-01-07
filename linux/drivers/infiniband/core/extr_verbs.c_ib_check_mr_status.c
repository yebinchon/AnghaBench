
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ib_mr_status {int dummy; } ;
struct ib_mr {TYPE_2__* device; } ;
struct TYPE_3__ {int (* check_mr_status ) (struct ib_mr*,int ,struct ib_mr_status*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_mr*,int ,struct ib_mr_status*) ;

int ib_check_mr_status(struct ib_mr *mr, u32 check_mask,
         struct ib_mr_status *mr_status)
{
 if (!mr->device->ops.check_mr_status)
  return -EOPNOTSUPP;

 return mr->device->ops.check_mr_status(mr, check_mask, mr_status);
}
