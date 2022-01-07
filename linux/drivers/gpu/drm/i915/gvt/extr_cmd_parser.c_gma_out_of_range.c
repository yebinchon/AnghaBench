
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool gma_out_of_range(unsigned long gma,
  unsigned long gma_head, unsigned int gma_tail)
{
 if (gma_tail >= gma_head)
  return (gma < gma_head) || (gma > gma_tail);
 else
  return (gma > gma_tail) && (gma < gma_head);
}
