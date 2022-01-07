
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;


 int EREMOTEIO ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ mb86a16_write (struct mb86a16_state*,int,int) ;
 int verbose ;

__attribute__((used)) static int S45T_set(struct mb86a16_state *state, unsigned char S4T, unsigned char S5T)
{
 if (mb86a16_write(state, 0x35, 0x00 | (S5T << 4) | S4T) < 0) {
  dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
  return -EREMOTEIO;
 }

 return 0;
}
