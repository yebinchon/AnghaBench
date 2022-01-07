
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int REG_SIZE ;

__attribute__((used)) static inline int irq_nr(u32 reg, u32 bit)
{
 return reg * REG_SIZE + bit;
}
