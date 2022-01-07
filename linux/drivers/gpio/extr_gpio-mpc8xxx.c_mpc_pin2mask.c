
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static inline u32 mpc_pin2mask(unsigned int offset)
{
 return BIT(31 - offset);
}
