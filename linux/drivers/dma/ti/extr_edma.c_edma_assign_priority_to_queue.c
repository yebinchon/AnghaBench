
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int dummy; } ;


 int EDMA_QUEPRI ;
 int edma_modify (struct edma_cc*,int ,int,int) ;

__attribute__((used)) static void edma_assign_priority_to_queue(struct edma_cc *ecc, int queue_no,
       int priority)
{
 int bit = queue_no * 4;

 edma_modify(ecc, EDMA_QUEPRI, ~(0x7 << bit), ((priority & 0x7) << bit));
}
