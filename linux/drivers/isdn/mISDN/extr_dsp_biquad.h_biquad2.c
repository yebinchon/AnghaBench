
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biquad2_state {int gain; int z1; int a1; int z2; int a2; int b1; int b2; } ;
typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static inline int16_t biquad2(struct biquad2_state *bq, int16_t sample)
{
 int32_t y;
 int32_t z0;

 z0 = sample * bq->gain + bq->z1 * bq->a1 + bq->z2 * bq->a2;
 y = z0 + bq->z1 * bq->b1 + bq->z2 * bq->b2;

 bq->z2 = bq->z1;
 bq->z1 = z0 >> 15;
 y >>= 15;
 return y;
}
