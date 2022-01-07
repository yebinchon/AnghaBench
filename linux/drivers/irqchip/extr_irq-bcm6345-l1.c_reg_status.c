
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm6345_l1_chip {int n_words; } ;



__attribute__((used)) static inline unsigned int reg_status(struct bcm6345_l1_chip *intc,
          unsigned int word)
{



 return (1 * intc->n_words + word) * sizeof(u32);

}
