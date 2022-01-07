
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct egpio_info {int bus_shift; scalar_t__ base_addr; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 egpio_readw(struct egpio_info *ei, int reg)
{
 return readw(ei->base_addr + (reg << ei->bus_shift));
}
