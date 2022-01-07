
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int * stats_counters; } ;
typedef enum rxe_counters { ____Placeholder_rxe_counters } rxe_counters ;


 int atomic64_inc (int *) ;

__attribute__((used)) static inline void rxe_counter_inc(struct rxe_dev *rxe, enum rxe_counters index)
{
 atomic64_inc(&rxe->stats_counters[index]);
}
