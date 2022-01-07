
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GEN8_HIGH_ADDRESS_BIT ;
 int sign_extend64 (int ,int ) ;

__attribute__((used)) static inline u64 gen8_canonical_addr(u64 address)
{
 return sign_extend64(address, GEN8_HIGH_ADDRESS_BIT);
}
