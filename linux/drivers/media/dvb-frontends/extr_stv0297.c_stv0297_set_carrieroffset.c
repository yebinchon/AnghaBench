
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0297_state {int dummy; } ;


 int stv0297_writereg (struct stv0297_state*,int,unsigned char) ;
 int stv0297_writereg_mask (struct stv0297_state*,int,int,long) ;

__attribute__((used)) static void stv0297_set_carrieroffset(struct stv0297_state *state, long offset)
{
 long tmp;


 tmp = offset * 26844L;
 if (tmp < 0)
  tmp += 0x10000000;
 tmp &= 0x0FFFFFFF;

 stv0297_writereg(state, 0x66, (unsigned char) (tmp & 0xFF));
 stv0297_writereg(state, 0x67, (unsigned char) (tmp >> 8));
 stv0297_writereg(state, 0x68, (unsigned char) (tmp >> 16));
 stv0297_writereg_mask(state, 0x69, 0x0F, (tmp >> 24) & 0x0f);
}
