
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bkey_float {int exponent; } ;
struct bkey {int low; } ;


 unsigned int BKEY_MANTISSA_MASK ;
 unsigned int shrd128 (int const,int const,int) ;

__attribute__((used)) static inline unsigned int bfloat_mantissa(const struct bkey *k,
           struct bkey_float *f)
{
 const uint64_t *p = &k->low - (f->exponent >> 6);

 return shrd128(p[-1], p[0], f->exponent & 63) & BKEY_MANTISSA_MASK;
}
