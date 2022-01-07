
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;


 int EREMOTEIO ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ mb86a16_write (struct mb86a16_state*,int,unsigned char) ;
 int verbose ;

__attribute__((used)) static int S01T_set(struct mb86a16_state *state,
      unsigned char s1t,
      unsigned s0t)
{
 if (mb86a16_write(state, 0x33, (s1t << 3) | s0t) < 0)
  goto err;

 return 0;
err:
 dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
 return -EREMOTEIO;
}
