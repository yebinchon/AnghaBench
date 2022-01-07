
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sdma_engine {scalar_t__ descq_cnt; } ;


 scalar_t__ sdma_descq_freecnt (struct sdma_engine*) ;

__attribute__((used)) static inline u16 sdma_descq_inprocess(struct sdma_engine *sde)
{
 return sde->descq_cnt - sdma_descq_freecnt(sde);
}
