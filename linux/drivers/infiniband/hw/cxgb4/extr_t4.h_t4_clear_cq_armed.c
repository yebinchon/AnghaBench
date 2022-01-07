
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cq {int flags; } ;


 int CQ_ARMED ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline int t4_clear_cq_armed(struct t4_cq *cq)
{
 return test_and_clear_bit(CQ_ARMED, &cq->flags);
}
