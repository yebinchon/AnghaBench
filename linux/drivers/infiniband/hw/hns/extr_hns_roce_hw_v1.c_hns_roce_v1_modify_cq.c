
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ib_cq {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int hns_roce_v1_modify_cq(struct ib_cq *cq, u16 cq_count, u16 cq_period)
{
 return -EOPNOTSUPP;
}
