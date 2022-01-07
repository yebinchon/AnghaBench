
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int ADF4371_MAX_MODULUS2 ;
 unsigned long long ADF4371_MODULUS1 ;
 void* do_div (unsigned long long,unsigned long long) ;
 unsigned int gcd (unsigned int,unsigned int) ;

__attribute__((used)) static void adf4371_pll_fract_n_compute(unsigned long long vco,
           unsigned long long pfd,
           unsigned int *integer,
           unsigned int *fract1,
           unsigned int *fract2,
           unsigned int *mod2)
{
 unsigned long long tmp;
 u32 gcd_div;

 tmp = do_div(vco, pfd);
 tmp = tmp * ADF4371_MODULUS1;
 *fract2 = do_div(tmp, pfd);

 *integer = vco;
 *fract1 = tmp;

 *mod2 = pfd;

 while (*mod2 > ADF4371_MAX_MODULUS2) {
  *mod2 >>= 1;
  *fract2 >>= 1;
 }

 gcd_div = gcd(*fract2, *mod2);
 *mod2 /= gcd_div;
 *fract2 /= gcd_div;
}
