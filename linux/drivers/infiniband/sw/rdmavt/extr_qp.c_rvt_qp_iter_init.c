
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvt_qp_iter {int specials; void (* cb ) (struct rvt_qp*,int ) ;int v; struct rvt_dev_info* rdi; } ;
struct TYPE_2__ {int phys_port_cnt; } ;
struct rvt_dev_info {TYPE_1__ ibdev; } ;


 int GFP_KERNEL ;
 struct rvt_qp_iter* kzalloc (int,int ) ;

struct rvt_qp_iter *rvt_qp_iter_init(struct rvt_dev_info *rdi,
         u64 v,
         void (*cb)(struct rvt_qp *qp, u64 v))
{
 struct rvt_qp_iter *i;

 i = kzalloc(sizeof(*i), GFP_KERNEL);
 if (!i)
  return ((void*)0);

 i->rdi = rdi;

 i->specials = rdi->ibdev.phys_port_cnt * 2;
 i->v = v;
 i->cb = cb;

 return i;
}
