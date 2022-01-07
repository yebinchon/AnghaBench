
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int READ_ONCE (int) ;
 int WRITE_ONCE (int,int) ;

__attribute__((used)) static inline void pasid_set_bits(u64 *ptr, u64 mask, u64 bits)
{
 u64 old;

 old = READ_ONCE(*ptr);
 WRITE_ONCE(*ptr, (old & ~mask) | bits);
}
