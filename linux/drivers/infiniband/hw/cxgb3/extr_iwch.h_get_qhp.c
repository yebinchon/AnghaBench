
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwch_qp {int dummy; } ;
struct iwch_dev {int qps; } ;


 struct iwch_qp* xa_load (int *,int ) ;

__attribute__((used)) static inline struct iwch_qp *get_qhp(struct iwch_dev *rhp, u32 qpid)
{
 return xa_load(&rhp->qps, qpid);
}
