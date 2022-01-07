
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm7038_l1_chip {unsigned int n_words; } ;



__attribute__((used)) static inline unsigned int reg_status(struct bcm7038_l1_chip *intc,
          unsigned int word)
{
 return (0 * intc->n_words + word) * sizeof(u32);
}
