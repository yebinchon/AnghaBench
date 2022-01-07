
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx22702_state {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int cx22702_readreg (struct cx22702_state*,int) ;
 int cx22702_writereg (struct cx22702_state*,int,int) ;

__attribute__((used)) static int cx22702_set_inversion(struct cx22702_state *state, int inversion)
{
 u8 val;

 val = cx22702_readreg(state, 0x0C);
 switch (inversion) {
 case 130:
  return -EOPNOTSUPP;
 case 128:
  val |= 0x01;
  break;
 case 129:
  val &= 0xfe;
  break;
 default:
  return -EINVAL;
 }
 return cx22702_writereg(state, 0x0C, val);
}
