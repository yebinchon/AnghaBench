
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int do_div (int,int) ;

__attribute__((used)) static inline uint32_t radeon_div(uint64_t n, uint32_t d)
{
 uint64_t mod;

 n += d / 2;

 mod = do_div(n, d);
 return n;
}
