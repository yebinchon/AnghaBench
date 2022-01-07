
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvt_mregion {TYPE_1__* pd; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_2__ {int device; } ;


 struct rvt_dev_info* ib_to_rvt (int ) ;
 int rvt_dereg_clean_qp_cb ;
 int rvt_qp_iter (struct rvt_dev_info*,int ,int ) ;

__attribute__((used)) static void rvt_dereg_clean_qps(struct rvt_mregion *mr)
{
 struct rvt_dev_info *rdi = ib_to_rvt(mr->pd->device);

 rvt_qp_iter(rdi, (u64)mr, rvt_dereg_clean_qp_cb);
}
