
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct egpio_info {int bus_shift; scalar_t__ base_addr; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void egpio_writew(u16 value, struct egpio_info *ei, int reg)
{
 writew(value, ei->base_addr + (reg << ei->bus_shift));
}
