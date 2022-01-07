
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct siw_qp {int qp_num; } ;



__attribute__((used)) static inline u32 qp_id(struct siw_qp *qp)
{
 return qp->qp_num;
}
