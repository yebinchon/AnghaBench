
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_umem_odp {int dummy; } ;


 int ib_umem_notifier_end_account (struct ib_umem_odp*) ;

__attribute__((used)) static int invalidate_range_end_trampoline(struct ib_umem_odp *item, u64 start,
        u64 end, void *cookie)
{
 ib_umem_notifier_end_account(item);
 return 0;
}
