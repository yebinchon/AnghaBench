
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_mr {int mem; } ;
struct siw_device {int num_mr; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int device; } ;


 int atomic_dec (int *) ;
 int kfree_rcu (struct siw_mr*,int ) ;
 int rcu ;
 int siw_dbg_mem (int ,char*) ;
 int siw_mr_drop_mem (struct siw_mr*) ;
 struct siw_device* to_siw_dev (int ) ;
 struct siw_mr* to_siw_mr (struct ib_mr*) ;

int siw_dereg_mr(struct ib_mr *base_mr, struct ib_udata *udata)
{
 struct siw_mr *mr = to_siw_mr(base_mr);
 struct siw_device *sdev = to_siw_dev(base_mr->device);

 siw_dbg_mem(mr->mem, "deregister MR\n");

 atomic_dec(&sdev->num_mr);

 siw_mr_drop_mem(mr);
 kfree_rcu(mr, rcu);

 return 0;
}
