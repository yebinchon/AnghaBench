
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int dummy; } ;
typedef int s32 ;


 int CFR0 ;
 int CFR1 ;
 int CFR2 ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int comp2 (int,int) ;

__attribute__((used)) static s32 stv090x_get_car_freq(struct stv090x_state *state, u32 mclk)
{
 s32 derot, int_1, int_2, tmp_1, tmp_2;

 derot = STV090x_READ_DEMOD(state, CFR2) << 16;
 derot |= STV090x_READ_DEMOD(state, CFR1) << 8;
 derot |= STV090x_READ_DEMOD(state, CFR0);

 derot = comp2(derot, 24);
 int_1 = mclk >> 12;
 int_2 = derot >> 12;


 tmp_1 = mclk % 0x1000;
 tmp_2 = derot % 0x1000;

 derot = (int_1 * int_2) +
  ((int_1 * tmp_2) >> 12) +
  ((int_2 * tmp_1) >> 12);

 return derot;
}
