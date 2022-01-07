
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GEN8_HIGH_ADDRESS_BIT ;
 int GENMASK_ULL (int ,int ) ;

__attribute__((used)) static inline u64 gen8_noncanonical_addr(u64 address)
{
 return address & GENMASK_ULL(GEN8_HIGH_ADDRESS_BIT, 0);
}
