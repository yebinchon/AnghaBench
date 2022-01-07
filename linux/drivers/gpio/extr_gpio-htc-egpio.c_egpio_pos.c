
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct egpio_info {int reg_shift; } ;



__attribute__((used)) static inline int egpio_pos(struct egpio_info *ei, int bit)
{
 return bit >> ei->reg_shift;
}
