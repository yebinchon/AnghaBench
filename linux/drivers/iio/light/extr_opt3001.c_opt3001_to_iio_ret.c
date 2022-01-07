
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct opt3001 {int dummy; } ;



__attribute__((used)) static void opt3001_to_iio_ret(struct opt3001 *opt, u8 exponent,
  u16 mantissa, int *val, int *val2)
{
 int lux;

 lux = 10 * (mantissa << exponent);
 *val = lux / 1000;
 *val2 = (lux - (*val * 1000)) * 1000;
}
