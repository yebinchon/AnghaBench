
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ah_attr {int dummy; } ;
struct rvt_ah {struct rdma_ah_attr attr; } ;
struct ib_ah {int dummy; } ;


 struct rvt_ah* ibah_to_rvtah (struct ib_ah*) ;

int rvt_query_ah(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
 struct rvt_ah *ah = ibah_to_rvtah(ibah);

 *ah_attr = ah->attr;

 return 0;
}
