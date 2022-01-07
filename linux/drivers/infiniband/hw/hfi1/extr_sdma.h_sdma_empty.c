
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {scalar_t__ descq_tail; scalar_t__ descq_head; } ;



__attribute__((used)) static inline int sdma_empty(struct sdma_engine *sde)
{
 return sde->descq_tail == sde->descq_head;
}
