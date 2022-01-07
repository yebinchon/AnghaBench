
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int size; } ;
struct t4_wq {TYPE_1__ sq; } ;


 int T4_SQ_NUM_SLOTS ;

__attribute__((used)) static inline u16 t4_sq_wq_size(struct t4_wq *wq)
{
  return wq->sq.size * T4_SQ_NUM_SLOTS;
}
