
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {TYPE_2__* ibdev; } ;
struct ib_umem_odp {TYPE_3__ umem; } ;
struct TYPE_4__ {int (* invalidate_range ) (struct ib_umem_odp*,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;


 int ib_umem_notifier_start_account (struct ib_umem_odp*) ;
 int stub1 (struct ib_umem_odp*,int ,int ) ;

__attribute__((used)) static int invalidate_range_start_trampoline(struct ib_umem_odp *item,
          u64 start, u64 end, void *cookie)
{
 ib_umem_notifier_start_account(item);
 item->umem.ibdev->ops.invalidate_range(item, start, end);
 return 0;
}
