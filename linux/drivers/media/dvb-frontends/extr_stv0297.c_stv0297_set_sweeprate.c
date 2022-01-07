
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0297_state {int dummy; } ;


 int stv0297_writereg (struct stv0297_state*,int,long) ;
 int stv0297_writereg_mask (struct stv0297_state*,int,int,long) ;

__attribute__((used)) static void stv0297_set_sweeprate(struct stv0297_state *state, short fshift, long symrate)
{
 long tmp;

 tmp = (long) fshift *262144L;
 tmp /= symrate;
 tmp *= 1024;


 if (tmp >= 0) {
  tmp += 500000;
 } else {
  tmp -= 500000;
 }
 tmp /= 1000000;

 stv0297_writereg(state, 0x60, tmp & 0xFF);
 stv0297_writereg_mask(state, 0x69, 0xF0, (tmp >> 4) & 0xf0);
}
