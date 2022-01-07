
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int dirty; } ;


 unsigned int q_size (int *) ;

__attribute__((used)) static bool clean_target_met(struct smq_policy *mq, bool idle)
{




 if (idle) {



  return q_size(&mq->dirty) == 0u;
 }




 return 1;
}
