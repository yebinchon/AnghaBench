
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sdma_engine {int descq_head; scalar_t__ descq_tail; scalar_t__ descq_cnt; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline u16 sdma_descq_freecnt(struct sdma_engine *sde)
{
 return sde->descq_cnt -
  (sde->descq_tail -
   READ_ONCE(sde->descq_head)) - 1;
}
