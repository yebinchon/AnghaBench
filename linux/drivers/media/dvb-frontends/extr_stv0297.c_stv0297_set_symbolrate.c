
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;
struct stv0297_state {int dummy; } ;


 int STV0297_CLOCK_KHZ ;
 int stv0297_writereg (struct stv0297_state*,int,unsigned char) ;

__attribute__((used)) static void stv0297_set_symbolrate(struct stv0297_state *state, u32 srate)
{
 long tmp;

 tmp = 131072L * srate;
 tmp = tmp / (STV0297_CLOCK_KHZ / 4);
 tmp = tmp * 8192L;

 stv0297_writereg(state, 0x55, (unsigned char) (tmp & 0xFF));
 stv0297_writereg(state, 0x56, (unsigned char) (tmp >> 8));
 stv0297_writereg(state, 0x57, (unsigned char) (tmp >> 16));
 stv0297_writereg(state, 0x58, (unsigned char) (tmp >> 24));
}
