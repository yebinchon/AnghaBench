
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max732x_chip {unsigned int mask_group_a; } ;



__attribute__((used)) static inline int is_group_a(struct max732x_chip *chip, unsigned off)
{
 return (1u << off) & chip->mask_group_a;
}
