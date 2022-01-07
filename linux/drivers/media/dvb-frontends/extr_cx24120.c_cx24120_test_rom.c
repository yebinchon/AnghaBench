
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx24120_state {int dummy; } ;


 int cx24120_readreg (struct cx24120_state*,int) ;
 int cx24120_writereg (struct cx24120_state*,int,int) ;

__attribute__((used)) static int cx24120_test_rom(struct cx24120_state *state)
{
 int err, ret;

 err = cx24120_readreg(state, 0xfd);
 if (err & 4) {
  ret = cx24120_readreg(state, 0xdf) & 0xfe;
  err = cx24120_writereg(state, 0xdf, ret);
 }
 return err;
}
