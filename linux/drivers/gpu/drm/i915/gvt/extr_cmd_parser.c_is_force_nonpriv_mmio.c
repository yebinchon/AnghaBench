
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_force_nonpriv_mmio(unsigned int offset)
{
 return (offset >= 0x24d0 && offset < 0x2500);
}
